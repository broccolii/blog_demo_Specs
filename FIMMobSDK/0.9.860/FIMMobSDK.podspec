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

  s.source_files  = "FIMMobSDK/*.{h,m}"
  s.vendored_libraries = "FIMMobSDK/FIMMobSDK/Kits/lib/*.{a}"
  s.libraries = "z","stdc++","sqlite3"
  
  s.frameworks = "CFNetwork", "CoreGraphics","SystemConfiguration","MobileCoreServices","Foundation","UIKit","Security","CoreAudio","AVFoundation"
  
  s.dependency 'AFNetworking', '2.5.4'
  s.dependency 'CocoaAsyncSocket', '7.4.1'
  s.dependency 'JSONModel', '1.1.0'
  s.dependency 'DACircularProgress', '2.3.1'
  s.dependency 'MirageImagePicker', '~>1.0.3'
  s.dependency 'PSTCollectionView', '1.2.3'
  s.dependency 'MBProgressHUD', '0.9.1'
  s.dependency 'MWPhotoBrowser', '~>2.1.1'
  s.dependency 'MadMaxService', '~>0.9'
  s.dependency 'SWTableViewCell', '~> 0.3.7'
  s.dependency 'YZInterstellarPush', '~>0.0.1'
  
  s.requires_arc = true
  s.default_subspec = 'Pro'
  
  s.subspec 'Pro' do |pro|
 
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