

Pod::Spec.new do |s|
  s.name             = 'SWNavViewCtrl'
  s.version          = '0.1.0'
  s.summary          = '一个手势返回导航栏的封装.'


  s.description      = <<-DESC
一个手势返回导航栏的封装,简单实用.
                       DESC








  s.homepage         = 'https://github.com/isongwei/SWNavViewCtrl'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'imsongwei@163.com' => 'mail.com' }
  s.source           = { :git => 'https://github.com/isongwei/SWNavViewCtrl.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SWNavViewCtrl/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SWNavViewCtrl' => ['SWNavViewCtrl/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
