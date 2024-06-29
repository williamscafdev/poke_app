import 'package:poke_app/env/env.dart';

enum ApiBaseUrl {
  prod,
}

enum EnvironmentApp {
  dev,
  prod,
  mock,
}

class EnvironmentConfig {
  static final Map<EnvironmentApp, Map<String, dynamic>> _config = {
    EnvironmentApp.dev: {
      'baseUrl': Env.api,
    },
    EnvironmentApp.prod: {
      'baseUrl': Env.api,
    },
    EnvironmentApp.mock: {
      'baseUrl': Env.api,
    },
  };

  static EnvironmentApp _currentEnvironment = EnvironmentApp.prod;

  static void setEnvironment(EnvironmentApp env) {
    _currentEnvironment = env;
  }

  static String get apiBaseUrl =>
      _config[_currentEnvironment]!['baseUrl'] as String;

  static Map<ApiBaseUrl, String> get apiBaseUrlMap => {
        ApiBaseUrl.prod: apiBaseUrl,
      };
}
