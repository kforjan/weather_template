import 'package:flutter/services.dart';
import 'package:weather_riverpod/common/config/config.dart';
import 'package:weather_riverpod/common/config/environment.dart';
import 'package:weather_riverpod/common/constants/exception_messages.dart';

abstract class ConfigReader {
  static Config get config {
    for (final environment in Environment.values) {
      if (appFlavor == environment.name) {
        return _getConfigForEnvironment(environment);
      }
    }

    final environments = Environment.values.map((env) => env.name).join(', ');
    throw Exception('${ExceptionMessages.envException}[$environments]');
  }

  static Config _getConfigForEnvironment(Environment environment) {
    switch (environment) {
      case Environment.prod:
        return ProdConfig();
      case Environment.stage:
        return StageConfig();
      case Environment.dev:
        return DevConfig();
    }
  }
}
