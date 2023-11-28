import 'package:weather_riverpod/common/config/environment.dart';
import 'package:weather_riverpod/common/constants/api_constants.dart';

abstract class Config {
  Environment get environment;
  String get baseApiUrl;
}

class DevConfig implements Config {
  @override
  Environment get environment => Environment.dev;

  @override
  String get baseApiUrl => ApiConstants.baseUrlDev;
}

class StageConfig implements Config {
  @override
  Environment get environment => Environment.stage;

  @override
  String get baseApiUrl => ApiConstants.baseUrlStage;
}

class ProdConfig implements Config {
  @override
  Environment get environment => Environment.prod;

  @override
  String get baseApiUrl => ApiConstants.baseUrlProd;
}
