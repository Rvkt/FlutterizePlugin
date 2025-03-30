import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutterize_method_channel.dart';

abstract class FlutterizePlatform extends PlatformInterface {
  /// Constructs a FlutterizePlatform.
  FlutterizePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterizePlatform _instance = MethodChannelFlutterize();

  /// The default instance of [FlutterizePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterize].
  static FlutterizePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterizePlatform] when
  /// they register themselves.
  static set instance(FlutterizePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('getPlatformVersion() has not been implemented.');
  }

  Future<String?> getDeviceId() {
    throw UnimplementedError('getDeviceId() has not been implemented.');
  }

  Future<int?> getBatteryLevel() {
    throw UnimplementedError('getBatteryLevel() has not been implemented.');
  }

  Future<String?> getNetworkStatus() {
    throw UnimplementedError('getNetworkStatus() has not been implemented.');
  }

  Future<int?> getFreeSpace() {
    throw UnimplementedError('getFreeSpace() has not been implemented.');
  }
}
