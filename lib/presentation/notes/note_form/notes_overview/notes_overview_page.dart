import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ddd_bloc/application/auth_bloc.dart';
import 'package:ddd_bloc/application/notes/note_actor/note_actor_bloc.dart';
import 'package:ddd_bloc/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:ddd_bloc/injection.dart';
import 'package:ddd_bloc/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'widget/notes_overview_body_widget.dart';

@RoutePage()
class NotesOverviewPage extends HookWidget implements AutoRouteWrapper {
  const NotesOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unAuthenticated: (_) =>
                  context.router.replace(const SignInRoute()),
              orElse: () {},
            );
          },
        ),
        BlocListener<NoteActorBloc, NoteActorState>(
          listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) {
                Flushbar(
                  duration: const Duration(seconds: 5),
                  message: state.noteFailure.map(
                      // Use localized strings here in your apps
                      insufficientPermissions: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                      unexpected: (_) =>
                          'Unexpected error occurred while deleting, please contact support.',
                      unableToDelete: (_) => 'unable to delete'),
                ).show(context);
              },
              orElse: () {},
            );
          },
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notes'),
          leading: IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
            },
          ),
          // actions: const <Widget>[
          //   UncompletedSwitch(),
          // ],
        ),
        body: const NotesOverviewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // context.router.push(
            //   const PageRouteInfo(,
            //       args: NoteFormPageArgs(editedNote: null)),
            //   //   arguments: NoteFormPageArguments(editedNote: null),
            // );
          },
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
            create: (context) => getIt<NoteWatcherBloc>()
              ..add(const NoteWatcherEvent.watchAllStarted())
            // ..add(const NoteWatcherEvent.apiDataReceived(true)),
            ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        ),
      ],
      child: this,
    );
  }
}
