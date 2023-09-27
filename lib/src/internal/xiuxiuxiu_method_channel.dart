import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'xiuxiuxiu_platform_interface.dart';

/// An implementation of [XiuxiuxiuPlatform] that uses method channels.
class MethodChannelXiuxiuxiu extends XiuxiuxiuPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('xiuxiuxiu');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
