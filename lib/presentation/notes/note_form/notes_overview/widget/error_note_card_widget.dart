import 'package:ddd_bloc/domain/notes/note.dart';
import 'package:flutter/material.dart';

class ErrorNoteCard extends StatelessWidget {
  final Note note;

  const ErrorNoteCard({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.error,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              'Invalid note, please contact support',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds:',
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
            Text(
              note.failureOption.fold(() => '', (f) => f.toString()),
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
