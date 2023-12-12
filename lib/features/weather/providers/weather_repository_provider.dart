import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_riverpod/features/weather/providers/weather_remote_source_provider.dart';
import 'package:weather_riverpod/features/weather/repository/weather_repository.dart';

part 'weather_repository_provider.g.dart';

@Riverpod(keepAlive: true)
WeatherRepository weatherRepository(WeatherRepositoryRef ref) {
  return WeatherRepository(ref.read(weatherRemoteSourceProvider));
}
