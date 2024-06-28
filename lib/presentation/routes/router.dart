import 'package:auto_route/auto_route.dart';
import 'package:ddd_bloc/presentation/notes/note_form/notes_overview/notes_overview_page.dart';
import 'package:ddd_bloc/presentation/sign_in/sign_in_page.dart';
import 'package:ddd_bloc/presentation/splash/splash_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: NotesOverviewRoute.page),
        // AutoRoute(page: NoteFormPage.page, fullscreenDialog: true),
      ];
}
