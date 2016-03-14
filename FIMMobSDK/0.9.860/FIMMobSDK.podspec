Pod::Spec.new do |s|

  s.name         = "FIMMobSDK"
  s.version      = "0.9.860"
  s.summary      = "YouZan FIMMobSDK."

  s.description  = <<-DESC
                   The private IMSDK of YouZan iOS App
                   DESC

  s.homepage     = "http://gitlab.qima-inc.com/AppLib/FlashIMiOS/wikis/home"
  
  s.license      = "MIT"
  
  s.author       = { "yuzeyang" => "yuzeyang@qima-inc.com" }
  
  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/broccolii/FIMMobSDK.git", :tag => s.version.to_s }
  
  s.default_subspec = 'Pro'
  
  s.subspec 'Pro' do |pro|
    pro.source_files  = "FIMMobSDK/*.{h,m}"
    pro.vendored_libraries = "FIMMobSDK/FIMMobSDK/Kits/lib/*.{a}"
    pro.libraries = "z","stdc++","sqlite3"
    
    pro.frameworks = "CFNetwork", "CoreGraphics","SystemConfiguration","MobileCoreServices","Foundation","UIKit","Security","CoreAudio","AVFoundation"
    
    pro.dependency 'AFNetworking', '2.5.4'
    pro.dependency 'CocoaAsyncSocket', '7.4.1'
    
    pro.requires_arc = true
  end

  s.subspec 'FIMMobSocket' do |ks|
    # 这个地方路径换一下就可以了
    ks.source_files   = "FIMMobSDK/FIMMobSDK/FIMSocket/*.{h,m}"

    ks.frameworks = "CFNetwork", "CoreGraphics","SystemConfiguration","MobileCoreServices","Foundation","UIKit","Security","CoreAudio","AVFoundation"

    ks.dependency 'CocoaAsyncSocket', '7.4.1'
    ks.requires_arc = true
  end
# https://guides.cocoapods.org/syntax/podspec.html#subspec
end