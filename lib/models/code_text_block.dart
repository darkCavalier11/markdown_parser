// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:markdown_parser/models/markdown_format.dart';

class CodeTextBlock {
  final String? programmingLang;
  final String codeText;
  CodeTextBlock({
    this.programmingLang,
    required this.codeText,
  });

  @override
  bool operator ==(covariant CodeTextBlock other) {
    if (identical(this, other)) return true;

    return other.programmingLang == programmingLang &&
        other.codeText == codeText;
  }

  @override
  int get hashCode => programmingLang.hashCode ^ codeText.hashCode;

  @override
  String toString() =>
      'CodeTextBlock(programmingLang: $programmingLang, codeText: $codeText)';
}
