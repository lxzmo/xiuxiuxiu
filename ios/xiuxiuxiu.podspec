#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint xiuxiuxiu.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'xiuxiuxiu'
  s.version          = '0.0.1'
  s.summary          = ' 阿里云一键登录Flutter插件'
  s.description      = <<-DESC
 阿里云一键登录Flutter插件
                       DESC
  s.homepage         = 'https://github.com/lxzmo/xiuxiuxiu'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'ellen' => '18610992356@163.com' }
  s.source           = { :path => '.' }

  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'

  s.dependency 'Flutter'
  s.dependency 'SDWebImage'
  s.dependency 'MJExtension'
  s.dependency 'MBProgressHUD'

  s.platform = :ios, '12.0'

  s.vendored_frameworks = 'frameworks/*.framework'
  s.framework = 'Network'
  s.resource = 'frameworks/ATAuthSDK.framework/ATAuthSDK.bundle'

  s.xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'ENABLE_BITCODE' => 'NO'
  }

  # Flutter.framework does not contain a i386 slice.
  # s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'   }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.swift_version = '5.0'
end
