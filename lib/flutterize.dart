import 'flutterize_platform_interface.dart';

class Flutterize {
  Future<String?> getPlatformVersion() {
    return FlutterizePlatform.instance.getPlatformVersion();
  }

  Future<String?> getDeviceId() {
    return FlutterizePlatform.instance.getDeviceId();
  }

  Future<int?> getBatteryLevel() {
    return FlutterizePlatform.instance.getBatteryLevel();
  }

  Future<String?> getNetworkStatus() {
    return FlutterizePlatform.instance.getNetworkStatus();
  }

  Future<int?> getFreeSpace() {
    return FlutterizePlatform.instance.getFreeSpace();
  }
}
