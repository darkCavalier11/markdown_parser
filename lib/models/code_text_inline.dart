// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:markdown_parser/models/markdown_format.dart';

class CodeTextInline extends MarkdownFormat {
  final String codeText;
  CodeTextInline({
    required this.codeText,
  });

  @override
  String toString() => 'CodeTextInline(codeText: $codeText)';

  @override
  bool operator ==(covariant CodeTextInline other) {
    if (identical(this, other)) return true;

    return other.codeText == codeText;
  }

  @override
  int get hashCode => codeText.hashCode;
}
