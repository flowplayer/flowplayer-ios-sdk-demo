# Uncomment the next line to define a global platform for your project

platform :ios, '12.1'

# Comment the next line if you don't want to use dynamic frameworks

use_frameworks!

workspace 'flowplayer-demo'
project 'flowplayer-demo.xcodeproj'
project 'flowplayer-objc-demo/flowplayer-objc-demo.xcodeproj'

def common_pods
pod 'Flowplayer', '3.0.1'
pod 'Rollbar', '~> 1.12.14'
pod 'GoogleAds-IMA-iOS-SDK', '3.14.4'
end

target 'flowplayer-demo' do
project 'flowplayer-demo.xcodeproj'

# Pods for flowplayer-demo

common_pods
end

target 'flowplayer-objc-demo' do
project 'flowplayer-objc-demo/flowplayer-objc-demo.xcodeproj'

# Pods for flowplayer-objc-demo

common_pods
end
