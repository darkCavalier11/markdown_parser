// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:markdown_parser/models/markdown_format.dart';
import 'package:markdown_parser/models/markdown_text_styles/markdown_text_styles.dart';

class MarkdownHashtag implements MarkdownGenericText {
  final String hashtagText;

  @override
  MarkdownTextStyle markdownTextStyle = MarkdownTextStyle.tag;
  MarkdownHashtag({
    required this.hashtagText,
    required this.markdownTextStyle,
  });

  @override
  String toString() =>
      'MarkdownHashtag(hashtagText: $hashtagText, markdownTextStyle: $markdownTextStyle)';

  @override
  bool operator ==(covariant MarkdownHashtag other) {
    if (identical(this, other)) return true;

    return other.hashtagText == hashtagText &&
        other.markdownTextStyle == markdownTextStyle;
  }

  @override
  int get hashCode => hashtagText.hashCode ^ markdownTextStyle.hashCode;
}
