enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Poke App Dev';
      case Flavor.prod:
        return 'Poke App';
      default:
        return 'title';
    }
  }
}
