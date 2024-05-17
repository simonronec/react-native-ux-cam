package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNUxcam"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNUxcam - React Native wrapper for uxcam.com.
                   DESC
  s.homepage     = "https://github.com/uxcam/react-native-ux-cam"
  s.license      = "MIT"
  s.author       = { "author" => "author@uxcam.com" }
  s.platform     = :ios, "12.0"
  s.source       = { :git => "https://github.com/uxcam/react-native-ux-cam", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true
  s.static_framework = true

  s.dependency 'React-Core'
  s.dependency 'UXCam' , '~> 3.6.13'
end