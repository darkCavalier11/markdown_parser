// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:markdown_parser/models/markdown_format.dart';

class Headings {
  final HeadingSize headingSize;
  final String headingText;
  Headings({
    required this.headingSize,
    required this.headingText,
  });

  @override
  bool operator ==(covariant Headings other) {
    if (identical(this, other)) return true;

    return other.headingSize == headingSize && other.headingText == headingText;
  }

  @override
  int get hashCode => headingSize.hashCode ^ headingText.hashCode;

  @override
  String toString() =>
      'Headings(headingSize: $headingSize, headingText: $headingText)';
}

enum HeadingSize { h1, h2, h3, h4, h5, h6 }
