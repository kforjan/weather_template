import 'package:weather_riverpod/features/weather/data/remote/weather_remote_source.dart';
import 'package:weather_riverpod/features/weather/model/weather.dart';

class WeatherRepository {
  WeatherRepository(this._dataSource);

  final WeatherRemoteSource _dataSource;

  Future<Weather> getWeather() async {
    final weatherData = await _dataSource.getWeather();
    return Weather.fromResponse(weatherData);
  }
}
