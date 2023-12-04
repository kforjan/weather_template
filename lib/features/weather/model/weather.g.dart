// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      temperature: (json['temperature'] as num).toDouble(),
      weatherType: $enumDecode(_$WeatherTypeEnumMap, json['weatherType']),
      cityName: json['cityName'] as String,
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'weatherType': _$WeatherTypeEnumMap[instance.weatherType]!,
      'cityName': instance.cityName,
      'humidity': instance.humidity,
    };

const _$WeatherTypeEnumMap = {
  WeatherType.clear: 'clear',
  WeatherType.rain: 'rain',
  WeatherType.snow: 'snow',
  WeatherType.cloudy: 'cloudy',
};
