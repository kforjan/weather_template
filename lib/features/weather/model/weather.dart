import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_riverpod/features/weather/model/weather_type.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required double temperature,
    required WeatherType weatherType,
    required String cityName,
    required int humidity,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
