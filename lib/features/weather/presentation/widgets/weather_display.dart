import 'package:flutter/material.dart';
import 'package:weather_riverpod/features/weather/model/weather.dart';

class WeatherDisplay extends StatelessWidget {
  const WeatherDisplay({required this.weather, super.key});

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Text(weather.temperature.toString());
  }
}
