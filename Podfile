# Uncomment the next line to define a global platform for your project
 platform :ios, '10.0'
# Comment the next line if you don't want to use dynamic frameworks
use_frameworks!

workspace 'flowplayer-demo'

project 'flowplayer-demo.xcodeproj'
project 'flowplayer-objc-demo/flowplayer-objc-demo.xcodeproj'

def common_pods
  pod 'FlowplayerCore', '~> 1.1.0'
  pod 'Rollbar', '~> 1.8.1'
  pod 'GoogleAds-IMA-iOS-SDK', '~> 3.9'
end

target 'flowplayer-demo' do
  # Pods for flowplayer-demo
  project 'flowplayer-demo.xcodeproj'
  common_pods
end

target 'flowplayer-objc-demo' do
  # Pods for flowplayer-objc-demo
#  project 'flowplayer-objc-demo/flowplayer-objc-demo.xcodeproj'
  common_pods
end
