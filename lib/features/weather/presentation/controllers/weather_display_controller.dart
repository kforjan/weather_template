import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:weather_riverpod/features/weather/model/weather.dart';
import 'package:weather_riverpod/features/weather/providers/weather_repository_provider.dart';

part 'weather_display_controller.g.dart';

@riverpod
class WeatherPageController extends _$WeatherPageController {
  @override
  FutureOr<Weather> build() {
    return ref.read(weatherRepositoryProvider).getWeather();
  }

  Future<void> reloadWeather() async {
    final weatherRepository = ref.read(weatherRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () async => weatherRepository.getWeather(),
    );
  }
}
