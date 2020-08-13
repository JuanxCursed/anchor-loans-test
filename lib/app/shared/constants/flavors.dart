abstract class FlavorInterface {
  static String appName;
}

class FlavorDebug implements FlavorInterface {
  static String appName = "Anchor Loans Debug";
}

class FlavorRelease implements FlavorInterface {
  static String appName = "Anchor Loans";
}
