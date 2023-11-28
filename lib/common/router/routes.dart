import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_riverpod/common/constants/route_names.dart';
import 'package:weather_riverpod/common/constants/route_paths.dart';
import 'package:weather_riverpod/features/weather/presentation/pages/weather_page.dart';

abstract class Routes {
  static List<GoRoute> get routes => [
        GoRoute(
          path: RoutePaths.weather,
          name: RouteNames.weather,
          pageBuilder: (context, state) => const MaterialPage(
            key: ValueKey(RouteNames.weather),
            child: WeatherPage(),
          ),
        ),
      ];
}
