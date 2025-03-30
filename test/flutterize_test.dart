import 'package:flutter_test/flutter_test.dart';
import 'package:flutterize/flutterize.dart';
import 'package:flutterize/flutterize_platform_interface.dart';
import 'package:flutterize/flutterize_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterizePlatform
    with MockPlatformInterfaceMixin
    implements FlutterizePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<int?> getBatteryLevel() {
    // TODO: implement getBatteryLevel
    throw UnimplementedError();
  }

  @override
  Future<String?> getDeviceId() {
    // TODO: implement getDeviceId
    throw UnimplementedError();
  }

  @override
  Future<int?> getFreeSpace() {
    // TODO: implement getFreeSpace
    throw UnimplementedError();
  }

  @override
  Future<String?> getNetworkStatus() {
    // TODO: implement getNetworkStatus
    throw UnimplementedError();
  }
}

void main() {
  final FlutterizePlatform initialPlatform = FlutterizePlatform.instance;

  test('$MethodChannelFlutterize is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterize>());
  });

  test('getPlatformVersion', () async {
    Flutterize flutterizePlugin = Flutterize();
    MockFlutterizePlatform fakePlatform = MockFlutterizePlatform();
    FlutterizePlatform.instance = fakePlatform;

    expect(await flutterizePlugin.getPlatformVersion(), '42');
  });
}
