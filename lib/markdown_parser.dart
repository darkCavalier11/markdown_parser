// ignore_for_file: public_member_api_docs, sort_constructors_first
library markdown_parser;

import 'dart:convert';

import 'package:markdown/markdown.dart';
import 'package:markdown_parser/models/markdown_format.dart';

class MarkdownParser {
  /// All markdown elements implements [MarkdownElement] which will be returned from the
  /// below method, which can be parsed and render using other methods
  static String getMarkdownElements(String markdown) {
    // Replace windows line endings with unix line endings, and split.
    final lines = markdown.replaceAll('\r\n', '\n').split('\n');
    final parsedLines = Document().parseLines(lines);
    print(lines);
    return MarkdownParserHelper().render(parsedLines);
  }
}

class MarkdownParserHelper implements NodeVisitor {
  static const _blockTags = [
    'blockquote',
    'h1',
    'h2',
    'h3',
    'h4',
    'h5',
    'h6',
    'hr',
    'li',
    'ol',
    'p',
    'pre',
    'ul',
    'address',
    'article',
    'aside',
    'details',
    'dd',
    'div',
    'dl',
    'dt',
    'figcaption',
    'figure',
    'footer',
    'header',
    'hgroup',
    'main',
    'nav',
    'section',
    'table',
    'thead',
    'tbody',
    'th',
    'tr',
    'td',
  ];
  late StringBuffer buffer;
  late Set<String> uniqueIds;

  final _elementStack = <Element>[];
  String? _lastVisitedTag;

  MarkdownParserHelper();

  String render(List<Node> nodes) {
    buffer = StringBuffer();
    uniqueIds = <String>{};

    for (final node in nodes) {
      node.accept(this);
    }

    return buffer.toString();
  }

  @override
  void visitText(Text text) {
    var content = text.textContent;
    if (const ['br', 'p', 'li'].contains(_lastVisitedTag)) {
      final lines = LineSplitter.split(content);
      content = content.contains('<pre>')
          ? lines.join('\n')
          : lines.map((line) => line.trimLeft()).join('\n');
      if (text.textContent.endsWith('\n')) {
        content = '$content\n';
      }
    }
    buffer.write(content);

    _lastVisitedTag = null;
  }

  @override
  bool visitElementBefore(Element element) {
    // Hackish. Separate block-level elements with newlines.
    if (buffer.isNotEmpty && _blockTags.contains(element.tag)) {
      buffer.writeln();
    }

    buffer.write('<${element.tag}');

    for (final entry in element.attributes.entries) {
      buffer.write(' ${entry.key}="${entry.value}"');
    }

    final generatedId = element.generatedId;

    // attach header anchor ids generated from text
    if (generatedId != null) {
      buffer.write(' id="${uniquifyId(generatedId)}"');
    }

    _lastVisitedTag = element.tag;

    if (element.isEmpty) {
      // Empty element like <hr/>.
      buffer.write(' />');

      if (element.tag == 'br') {
        buffer.write('\n');
      }

      return false;
    } else {
      _elementStack.add(element);
      buffer.write('>');
      return true;
    }
  }

  @override
  void visitElementAfter(Element element) {
    assert(identical(_elementStack.last, element));

    if (element.children != null &&
        element.children!.isNotEmpty &&
        _blockTags.contains(_lastVisitedTag) &&
        _blockTags.contains(element.tag)) {
      buffer.writeln();
    } else if (element.tag == 'blockquote') {
      buffer.writeln();
    }
    buffer.write('</${element.tag}>');

    _lastVisitedTag = _elementStack.removeLast().tag;
  }

  /// Uniquifies an id generated from text.
  String uniquifyId(String id) {
    if (!uniqueIds.contains(id)) {
      uniqueIds.add(id);
      return id;
    }

    var suffix = 2;
    var suffixedId = '$id-$suffix';
    while (uniqueIds.contains(suffixedId)) {
      suffixedId = '$id-${suffix++}';
    }

    uniqueIds.add(suffixedId);
    return suffixedId;
  }
}
