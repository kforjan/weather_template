import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_riverpod/features/weather/model/weather_type.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WeatherResponse({
    required double temperature,
    required int humidity,
    required String cityName,
    required WeatherType weatherType,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}
