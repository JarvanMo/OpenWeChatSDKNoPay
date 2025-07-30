Pod::Spec.new do |s|
  s.name = "OpenWeChatSDKNoPay"
  s.version = "2.0.5"
  s.summary = "WeChatSDK for Cocoapods convenience."
  s.license = {"type"=>"MIT", "text"=>"LICENSE"}
  s.authors = {"JarvanMo"=>"jarvan.mo@gmail.com"}
  s.homepage = "https://github.com/JarvanMo/OpenWeChatSDKNoPay"

  
   s.source = {
    :git => "https://github.com/JarvanMo/OpenWeChatSDKNoPay",
    :tag => "#{s.version}"
  }

  s.platform     = :ios, '12.0'
  s.requires_arc = true

  s.vendored_frameworks   = 'WechatOpenSDK-XCFramework.xcframework'
  s.frameworks = 'CoreGraphics', 'Security', 'WebKit'
  s.libraries = 'c++', 'z', 'sqlite3.0'

  # s.default_subspec = "precompiled"
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  
  # s.subspec "precompiled" do |ss|
  #   ss.preserve_paths         = "Pod/Library/include/WeChat/*.h", 'Pod/Library/lib/*.a'
  #   ss.vendored_libraries   = 'Pod/Library/lib/*.a'
  #   ss.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Headers/Public/#{s.name}" }
  # end
end
