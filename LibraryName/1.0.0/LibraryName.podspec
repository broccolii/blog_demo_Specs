
Pod::Spec.new do |s|

  s.name         = "PrivateLibrary"
  s.version      = "0.0.1"                  #版本号
  s.summary      = "私有库的描述"

  s.description  = <<-DESC
                   私有库的描述
                   DESC

  s.homepage     = "https://github.com/broccolii/blog_demo_PrivateLibrary"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "broccoliii" => "broccoliii@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/broccolii/blog_demo_PrivateLibrary.git", :tag => "0.0.1" }
  s.source_files  = "SourceCode/*"

  # 如果私有库中使用了 系统系统的 Framework 可以在这里添加 
  # s.framework  = "SomeFramework" 
  # s.frameworks = "SomeFramework", "AnotherFramework"

  s.requires_arc = true #开启 ARC
  # s.dependency "<library name>", "~> <version code>" #这里可以添加其他的一些第三方库
  
end
