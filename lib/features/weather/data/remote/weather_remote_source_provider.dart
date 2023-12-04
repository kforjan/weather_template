import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_riverpod/common/providers/dio_provider.dart';
import 'package:weather_riverpod/features/weather/data/remote/weather_remote_source.dart';

part 'weather_remote_source_provider.g.dart';

@Riverpod(keepAlive: true)
WeatherRemoteSource weatherRemoteSource(WeatherRemoteSourceRef ref) {
  return WeatherRemoteSource(ref.read(dioProvider));
}
