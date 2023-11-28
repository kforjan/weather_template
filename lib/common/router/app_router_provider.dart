import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_riverpod/common/constants/route_paths.dart';
import 'package:weather_riverpod/common/router/app_router.dart';
import 'package:weather_riverpod/common/router/routes.dart';

part 'app_router_provider.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    routes: Routes.routes,
    initialLocation: RoutePaths.weather,
  );
}

@Riverpod(keepAlive: true)
AppRouter appRouter(AppRouterRef ref) {
  final goRouter = ref.watch(goRouterProvider);
  return AppRouter(goRouter);
}
