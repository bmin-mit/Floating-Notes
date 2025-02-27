import 'package:flutter/material.dart';

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 3,
        padding: EdgeInsets.symmetric(horizontal: 8),
        separatorBuilder: (context, index) => SizedBox(height: 8),
        itemBuilder: (context, index) {
          return NoteTile(
            title: 'Note $index',
            content: 'This is the content of note $index',
          );
        },
      ),
    );
  }
}

class NoteTile extends StatelessWidget {
  final String title;
  final String content;

  const NoteTile({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: ListTile(
        title: Text(title, style: theme.textTheme.titleSmall),
        subtitle: Text(
          content,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
