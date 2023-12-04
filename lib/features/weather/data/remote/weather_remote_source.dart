import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_riverpod/common/constants/api_constants.dart';
import 'package:weather_riverpod/features/weather/data/dto/response/weather_response.dart';

part 'weather_remote_source.g.dart';

@RestApi()
abstract class WeatherRemoteSource {
  factory WeatherRemoteSource(Dio dio) = _WeatherRemoteSource;

  @GET(ApiConstants.weather)
  Future<WeatherResponse> getWeather();
}
