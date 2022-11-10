// ignore_for_file: public_member_api_docs, sort_constructors_first
library markdown_parser;

class MarkdownParser {
  final String markdownText;
  MarkdownParser({
    required this.markdownText,
  });
  

  @override
  String toString() => 'MarkdownParser(markdownText: $markdownText)';

  @override
  bool operator ==(covariant MarkdownParser other) {
    if (identical(this, other)) return true;
  
    return 
      other.markdownText == markdownText;
  }

  @override
  int get hashCode => markdownText.hashCode;
}
