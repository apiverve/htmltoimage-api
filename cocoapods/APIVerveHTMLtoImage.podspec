Pod::Spec.new do |s|
  s.name             = 'APIVerveHTMLtoImage'
  s.version          = '1.2.3'
  s.summary          = 'HTML to Image is an HTML to image API that renders HTML code into a high-quality PNG image.'
  s.description      = <<-'DESC'
HTML to Image is an HTML to image API that renders HTML code into a high-quality PNG image. Paid plans add custom dimensions and JPEG or WebP output.

This iOS/macOS SDK provides a convenient way to access the HTML to Image from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/htmltoimage?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/htmltoimage-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveHTMLtoImage/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
