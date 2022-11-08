// ignore_for_file: public_member_api_docs, sort_constructors_first
class Links {
  final String title;
  final String url;
  Links({
    required this.title,
    required this.url,
  });

  @override
  bool operator ==(covariant Links other) {
    if (identical(this, other)) return true;

    return other.title == title && other.url == url;
  }

  @override
  int get hashCode => title.hashCode ^ url.hashCode;

  @override
  String toString() => 'Links(title: $title, url: $url)';
}
