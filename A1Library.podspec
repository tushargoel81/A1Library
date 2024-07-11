Pod::Spec.new do |spec|
  spec.name         = "A1Library"
  spec.version      = "1.0"
  spec.summary      = "Private common A1Library."
  spec.description  = "Private common SDK to personal use A1Library."
  spec.homepage         = 'https://github.com/tushargoel81/A1Library'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { "`tushargoel81`" => "97023392+tushargoel81@users.noreply.github.com" }
  spec.source           = { :git => 'https://github.com/tushargoel81/A1Library', :tag => spec.version.to_s }
  spec.platform     = :ios, "14.0"
    spec.swift_version = '5.0'
  spec.static_framework = true
  spec.ios.deployment_target  = '14.0'
  spec.dependency 'YandexMobileMetrica', '4.5.2'
end

