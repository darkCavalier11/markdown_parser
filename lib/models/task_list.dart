// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:markdown_parser/models/markdown_format.dart';

class TaskList {
  final MarkdownGenericText markdownGenericText;
  final TaskStatus taskStatus;
  TaskList({
    required this.markdownGenericText,
    required this.taskStatus,
  });

  @override
  String toString() =>
      'TaskList(markdownGenericText: $markdownGenericText, taskStatus: $taskStatus)';

  @override
  bool operator ==(covariant TaskList other) {
    if (identical(this, other)) return true;

    return other.markdownGenericText == markdownGenericText && other.taskStatus == taskStatus;
  }

  @override
  int get hashCode => markdownGenericText.hashCode ^ taskStatus.hashCode;
}

enum TaskStatus {
  completed,
  pending,
}
