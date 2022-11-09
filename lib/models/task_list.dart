// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:markdown_parser/models/markdown_format.dart';

class TaskList {
  final MarkdownText markdownText;
  final TaskStatus taskStatus;
  TaskList({
    required this.markdownText,
    required this.taskStatus,
  });

  @override
  String toString() =>
      'TaskList(markdownText: $markdownText, taskStatus: $taskStatus)';

  @override
  bool operator ==(covariant TaskList other) {
    if (identical(this, other)) return true;

    return other.markdownText == markdownText && other.taskStatus == taskStatus;
  }

  @override
  int get hashCode => markdownText.hashCode ^ taskStatus.hashCode;
}

enum TaskStatus {
  completed,
  pending,
}
