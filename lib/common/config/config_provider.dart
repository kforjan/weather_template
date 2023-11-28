import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_riverpod/common/config/config.dart';
import 'package:weather_riverpod/common/config/config_reader.dart';

part 'config_provider.g.dart';

@Riverpod(keepAlive: true)
Config config(ConfigRef ref) {
  return ConfigReader.config;
}
