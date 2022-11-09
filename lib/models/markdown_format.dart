import 'package:markdown_parser/models/markdown_text_styles/markdown_text_styles.dart';

abstract class MarkdownFormat {}

// markdown generic text are regular text that could be shown any where
// like normal text, links, inline code texts.
abstract class MarkdownGenericText {
  MarkdownTextStyle markdownTextStyle = MarkdownTextStyle.none;
}
