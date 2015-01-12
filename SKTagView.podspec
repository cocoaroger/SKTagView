Pod::Spec.new do |s|
  s.name         = "SKTagView"
  s.version      = "0.1"
  s.summary      = "SKTagView is a view supports to display tags with auto layout."

  s.description  = <<-DESC
                    SKTagView is a view supports to display tags with auto layout.
                   DESC

  s.homepage     = "http://github.com/zsk425/SKTagView"
  s.license      = "MIT"
  s.author       = { "Shaokang Zhao" => "zsk425@hotmail.com" }
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/zsk425/SKTagView.git" }
  s.source_files  = "SKTagView/*"
  s.framework  = "UIKit", "Foundation"
  s.requires_arc = true
  s.dependency "Masonry"

end