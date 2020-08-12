abstract class FlavorInterface {
  static String appName;
}

class FlavorDebug implements FlavorInterface {
  static String appName = "Married Games Debug";
}

class FlavorRelease implements FlavorInterface {
  static String appName = "Married Games";
}
