// ignore_for_file: public_member_api_docs, sort_constructors_first
library markdown_parser;

import 'package:markdown_parser/models/markdown_format.dart';

class MarkdownParser {
  /// All markdown elements implements [MarkdownElement] which will be returned from the 
  /// below method, which can be parsed and render using other methods
  static List<MarkdownElement> getMarkdownElements(String markdownText) {
    return [];
  }
}
