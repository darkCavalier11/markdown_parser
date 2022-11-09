// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:markdown_parser/models/markdown_format.dart';
import 'package:markdown_parser/models/markdown_text_styles/markdown_text_styles.dart';
import 'package:markdown_parser/models/regular_text.dart';

class HighlightText {
  final MarkdownGenericText markdownGenericText;
  Color? highlightColors = Colors.blue.withOpacity(0.2);
  HighlightText({
    required this.markdownGenericText,
    this.highlightColors,
  });
}
