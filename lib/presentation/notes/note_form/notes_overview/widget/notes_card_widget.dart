import 'package:ddd_bloc/application/notes/note_actor/note_actor_bloc.dart';
import 'package:ddd_bloc/domain/notes/note.dart';
import 'package:ddd_bloc/domain/notes/todo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

class NotesCardWidget extends StatelessWidget {
  final Note note;
  const NotesCardWidget({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: note.color.getOrCrash(),
      //! For showcasing the effects of clipBehavior
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          // context.router.push(PageRouteInfo(NoteFormPage.name,
          //     args: NoteFormPageArgs(editedNote: note)));

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (c) => NoteFormPageScaffold(),
          //     settings: RouteSettings(
          //         arguments: NoteFormPageArguments(editedNote: note)),
          //   ),
          // );
          // Router.navigator.pushNamed(
          //   Router.noteFormPage,
          //   arguments: NoteFormPageArguments(editedNote: note),
          // );
        },
        onLongPress: () {
          final noteActorBloc = context.read<NoteActorBloc>();
          showDialog(
            context: context,
            builder: (context) {
              return BlocProvider.value(
                value: noteActorBloc,
                child: AlertDialog(
                  title: const Text('Selected note:'),
                  content: Text(
                    note.body.getOrCrash() ?? "",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('CANCEL'),
                    ),
                    TextButton(
                      onPressed: () {
                        noteActorBloc.add(NoteActorEvent.deleted(note));
                        Navigator.pop(context);
                      },
                      child: const Text('DELETE'),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                note.body.getOrCrash() ?? "",
                style: const TextStyle(fontSize: 18),
              ),
              if (note.todos.length > 0) ...[
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ...note.todos
                        .getOrCrash()
                        .map(
                          (todo) => TodoDisplay(
                            todo: todo,
                          ),
                        )
                        .iter,
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class TodoDisplay extends StatelessWidget {
  final TodoItem todo;

  const TodoDisplay({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (todo.done)
          const Icon(
            Icons.check_box,
            //color: Theme.of(context).accentColor,
          ),
        if (!todo.done)
          Icon(
            Icons.check_box_outline_blank,
            color: Theme.of(context).disabledColor,
          ),
        Text(todo.name.getOrCrash() ?? ""),
      ],
    );
  }
}
