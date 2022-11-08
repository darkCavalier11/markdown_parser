import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ListItems {
  final int indentLevel;
  final List<String> text;
  // next sets of list item with an extra indent
  final List<ListItems>? nextListitem;
  ListItems({
    required this.indentLevel,
    required this.text,
    this.nextListitem,
  });

  @override
  String toString() =>
      'ListItems(indentLevel: $indentLevel, text: $text, nextListitem: $nextListitem)';

  @override
  bool operator ==(covariant ListItems other) {
    if (identical(this, other)) return true;

    return other.indentLevel == indentLevel &&
        listEquals(other.text, text) &&
        listEquals(other.nextListitem, nextListitem);
  }

  @override
  int get hashCode =>
      indentLevel.hashCode ^ text.hashCode ^ nextListitem.hashCode;
}
