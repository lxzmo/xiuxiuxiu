#import "XiuxiuxiuPlugin.h"

#if __has_include(<xiuxiuxiu/xiuxiuxiu-Swift.h>)
#import <xiuxiuxiu/xiuxiuxiu-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "xiuxiuxiu-Swift.h"
#endif

@implementation XiuxiuxiuPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftXiuxiuxiuPlugin registerWithRegistrar:registrar];
}

// @implementation XiuxiuxiuPlugin
// + (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
//   FlutterMethodChannel* channel = [FlutterMethodChannel
//       methodChannelWithName:@"xiuxiuxiu"
//             binaryMessenger:[registrar messenger]];
//   XiuxiuxiuPlugin* instance = [[XiuxiuxiuPlugin alloc] init];
//   [registrar addMethodCallDelegate:instance channel:channel];
// }

// - (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
//   if ([@"getPlatformVersion" isEqualToString:call.method]) {
//     result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
//   } else {
//     result(FlutterMethodNotImplemented);
//   }
// }

@end
