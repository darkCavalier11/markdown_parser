// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:markdown_parser/models/markdown_format.dart';
import 'package:markdown_parser/models/markdown_text_styles/markdown_text_styles.dart';

class RegularText implements MarkdownGenericText {
  @override
  final MarkdownTextStyle markdownTextStyle;
  final String text;
  RegularText({
    required this.markdownTextStyle,
    required this.text,
  });

  @override
  set markdownTextStyle(MarkdownTextStyle markdownTextStyle) {}

  @override
  String toString() =>
      'RegularText(markdownTextStyle: $markdownTextStyle, text: $text)';

  @override
  bool operator ==(covariant RegularText other) {
    if (identical(this, other)) return true;

    return other.markdownTextStyle == markdownTextStyle && other.text == text;
  }

  @override
  int get hashCode => markdownTextStyle.hashCode ^ text.hashCode;
}
