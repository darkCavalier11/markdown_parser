// ignore_for_file: public_member_api_docs, sort_constructors_first
library markdown_parser;

import 'package:markdown/markdown.dart';
import 'package:markdown_parser/models/markdown_format.dart';

class MarkdownParser {
  /// All markdown elements implements [MarkdownElement] which will be returned from the
  /// below method, which can be parsed and render using other methods
  static List<MarkdownElement> getMarkdownElements(String markdown) {
    // Replace windows line endings with unix line endings, and split.
    final lines = markdown.replaceAll('\r\n', '\n').split('\n');
    final parsedLines = Document().parseLines(lines);
    print(parsedLines[0]);
    renderToHtml(nodes)
    return [];
  }
}


class MarkdownParserHelper implements NodeVisitor {
  @override
  void visitElementAfter(Element element) {
    // TODO: implement visitElementAfter
  }

  @override
  bool visitElementBefore(Element element) {
    // TODO: implement visitElementBefore
    throw UnimplementedError();
  }

  @override
  void visitText(Text text) {
    // TODO: implement visitText
  }

}