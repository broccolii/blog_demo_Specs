Pod::Spec.new do |s|
  s.name     = 'AFNetworking'
  s.version  = '3.0.4'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS and OS X networking framework.'
  s.homepage = 'https://github.com/AFNetworking/AFNetworking'
  s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/broccolii/AFNetworking.git', :tag => s.version, :submodules => true }
  s.requires_arc = true
  
  s.public_header_files = 'AFNetworking/AFNetworking.h'
  s.source_files = 'AFNetworking/*'
  
  s.subspec 'TestPodspec' do |ks|
    # 这个地方路径换一下就可以了
    ks.source_files   = "AFNetworking/TestPodspec/*.{h,m}"
    ks.requires_arc = true
  end

  pch_AF = <<-EOS
#ifndef TARGET_OS_IOS
  #define TARGET_OS_IOS TARGET_OS_IPHONE
#endif

#ifndef TARGET_OS_WATCH
  #define TARGET_OS_WATCH 0
#endif

#ifndef TARGET_OS_TV
  #define TARGET_OS_TV 0
#endif
EOS