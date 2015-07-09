
Pod::Spec.new do |s|

  s.name         = "KireiWebView"
  s.version      = "0.0.1"
  s.summary      = "Simple And LightWeght Beautiful UIViewController for WebView."

  s.description  = <<-DESC
                   Simple And LightWeght Beautiful UIViewController for WebView.
                   DESC

  s.homepage     = "https://github.com/entotsu/KireiWebView"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT (example)"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "Takuya.Okamoto" => "blackn.red42@gmail.com" }
  # Or just: s.author    = "Takuya.Okamoto"
  # s.authors            = { "Takuya.Okamoto" => "blackn.red42@gmail.com" }
  # s.social_media_url   = "http://twitter.com/Takuya.Okamoto"


  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"


  s.source       = { :git => "https://github.com/entotsu/KireiWebView.git"}#, :tag => "0.0.1" }

  # s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"
  s.source_files  = "Classes", "KireiWebView/Classes/*.swift"
  s.resources = 'KireiWebView/Resources/KireiWebView.xcassets'
  # s.frameworks = 'WebKit'

  # s.public_header_files = "Classes/**/*.h"


  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "SnapKit", '~> 0.12.0'
  # s.dependency "JSONKit", "~> 1.4"
end
