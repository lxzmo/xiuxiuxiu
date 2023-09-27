import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'xiuxiuxiu_method_channel.dart';

abstract class XiuxiuxiuPlatform extends PlatformInterface {
  /// Constructs a XiuxiuxiuPlatform.
  XiuxiuxiuPlatform() : super(token: _token);

  static final Object _token = Object();

  static XiuxiuxiuPlatform _instance = MethodChannelXiuxiuxiu();

  /// The default instance of [XiuxiuxiuPlatform] to use.
  ///
  /// Defaults to [MethodChannelXiuxiuxiu].
  static XiuxiuxiuPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [XiuxiuxiuPlatform] when
  /// they register themselves.
  static set instance(XiuxiuxiuPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
