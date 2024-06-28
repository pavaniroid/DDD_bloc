import 'package:ddd_bloc/domain/notes/note_failure.dart';
import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final NoteFailure failure;

  const CriticalFailureDisplay({
    super.key,
    required this.failure,
  });

  @override
  Widget build(BuildContext context) {
    print(failure);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            failure.maybeMap(
              insufficientPermissions: (_) => 'Insufficient permissions',
              orElse: () => 'Unexpected error.\nPlease, contact support.',
            ),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              print('Sending email...');
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('I NEED HELP'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
