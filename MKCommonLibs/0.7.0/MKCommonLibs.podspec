#
# Be sure to run `pod lib lint MKCommonLibs.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MKCommonLibs'
  s.version          = '0.7.0'
  s.summary          = 'MKCommonLibs.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       A MKCommonLibs.
                       DESC

  s.homepage         = 'https://github.com/mukang/MKCommonLibs'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mukang' => 'mukang@buluo-gs.com' }
  s.source           = { :git => 'https://github.com/mukang/MKCommonLibs.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.frameworks = 'UIKit', 'MapKit'

  # s.source_files = 'MKCommonLibs/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MKCommonLibs' => ['MKCommonLibs/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.subspec 'WebService' do |webService|
  webService.source_files = 'MKCommonLibs/Classes/WebService/**/*'
  webService.public_header_files = 'MKCommonLibs/Classes/WebService/**/*.h'
  webService.dependency 'AFNetworking'
  webService.resource_bundles = {
     'webService' => ['MKCommonLibs/Assets/HD4.0.png']
  }
  end

  s.subspec 'UI' do |ui|
  ui.source_files = 'MKCommonLibs/Classes/UI/**/*'
  ui.public_header_files = 'MKCommonLibs/Classes/UI/**/*.h'
  ui.dependency 'AFNetworking'
  ui.resource_bundles = {
     'ui' => ['MKCommonLibs/Assets/{HD4.0.png, HD4.7.png}']
  }
  end
end
