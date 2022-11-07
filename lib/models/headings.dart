// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:markdown_parser/models/markdown_format.dart';

class Headings extends MarkdownFormat {
  final HeadingSize headingSize;
  final String headingText;
  Headings({
    required this.headingSize,
    required this.headingText,
  });
}

enum HeadingSize { h1, h2, h3, h4, h5, h6 }
