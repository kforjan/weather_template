// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseImpl _$$WeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherResponseImpl(
      temperature: (json['temperature'] as num).toDouble(),
      humidity: json['humidity'] as int,
      cityName: json['city_name'] as String,
      weatherType: $enumDecode(_$WeatherTypeEnumMap, json['weather_type']),
    );

Map<String, dynamic> _$$WeatherResponseImplToJson(
        _$WeatherResponseImpl instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'city_name': instance.cityName,
      'weather_type': _$WeatherTypeEnumMap[instance.weatherType]!,
    };

const _$WeatherTypeEnumMap = {
  WeatherType.clear: 'clear',
  WeatherType.rain: 'rain',
  WeatherType.snow: 'snow',
  WeatherType.cloudy: 'cloudy',
};
