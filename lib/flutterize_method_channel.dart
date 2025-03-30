import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutterize_platform_interface.dart';

/// An implementation of [FlutterizePlatform] that uses method channels.
class MethodChannelFlutterize extends FlutterizePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutterize');

  static const MethodChannel _channel = MethodChannel('flutterize');

  @override
  Future<String?> getPlatformVersion() async {
    return await _channel.invokeMethod<String>('getPlatformVersion');
  }

  @override
  Future<String?> getDeviceId() async {
    return await _channel.invokeMethod<String>('getDeviceId');
  }

  @override
  Future<int?> getBatteryLevel() async {
    return await _channel.invokeMethod<int>('getBatteryLevel');
  }

  @override
  Future<String?> getNetworkStatus() async {
    return await _channel.invokeMethod<String>('getNetworkStatus');
  }

  @override
  Future<int?> getFreeSpace() async {
    return await _channel.invokeMethod<int>('getFreeSpace');
  }
}
