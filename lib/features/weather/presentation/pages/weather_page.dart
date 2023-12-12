import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_riverpod/common/constants/route_paths.dart';
import 'package:weather_riverpod/common/widgets/app_button.dart';
import 'package:weather_riverpod/features/weather/presentation/controllers/weather_display_controller.dart';
import 'package:weather_riverpod/features/weather/presentation/widgets/weather_display.dart';

class WeatherPage extends ConsumerWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherController = ref.watch(weatherPageControllerProvider);
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(RoutePaths.settings);
        },
        child: const Icon(Icons.settings),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            weatherController.map(
              data: (state) => WeatherDisplay(weather: state.value),
              loading: (state) => const CircularProgressIndicator(),
              error: (state) => AppButton(
                label: 'Retry',
                onPressed: () {},
              ),
            ),
            AppButton(
              label: 'Get Weather',
              onPressed: () async {
                await ref
                    .watch(weatherPageControllerProvider.notifier)
                    .reloadWeather();
              },
            ),
          ],
        ),
      ),
    );
  }
}
