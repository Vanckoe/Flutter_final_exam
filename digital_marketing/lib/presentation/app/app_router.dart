import 'package:digital_marketing/domain/entity/news_model.dart';
import 'package:digital_marketing/presentation/screen/auth/auth_screen.dart';
import 'package:digital_marketing/presentation/screen/home/home_screen.dart';
import 'package:digital_marketing/presentation/screen/news_page/news_page_screen.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

class AppRouter {
  static final _router = GoRouter(routes: _routes);

  static GoRouter get router => _router;

  static final _routes = <GoRoute>[
    GoRoute(
      path: AppRoutes.home.path,
      builder: (_, __) => HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.auth.path,
      builder: (_, __) => AuthScreen(),
    ),
    GoRoute(
      path: AppRoutes.news.path,
      builder: (_, state) => NewsPageScreen(
        newsModel: state.extra as NewsModel,
      ),
    ),
  ];
}
