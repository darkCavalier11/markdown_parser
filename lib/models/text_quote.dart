// ignore_for_file: public_member_api_docs, sort_constructors_first
class TextQuote {
  final String textQuote;
  TextQuote({
    required this.textQuote,
  });

  @override
  bool operator ==(covariant TextQuote other) {
    if (identical(this, other)) return true;

    return other.textQuote == textQuote;
  }

  @override
  int get hashCode => textQuote.hashCode;

  @override
  String toString() => 'TextQuote(textQuote: $textQuote)';
}
