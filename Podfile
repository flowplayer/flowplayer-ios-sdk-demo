use_frameworks!
inhibit_all_warnings!

workspace 'flowplayer-demo'
project 'flowplayer-demo.xcodeproj'
project 'flowplayer-objc-demo.xcodeproj'
project 'flowplayer-tvOS.xcodeproj'

def ios_pods
    pod 'Flowplayer', '3.0.2'
    pod 'Rollbar', '1.12.14'
    pod 'GoogleAds-IMA-iOS-SDK', '3.14.4'
end

def tvos_pods
    pod 'Flowplayer-tvOS', '1.0.2'
    pod 'GoogleAds-IMA-tvOS-SDK', '4.4.2'
end

target 'flowplayer-demo' do
    project 'flowplayer-demo.xcodeproj'
    platform :ios, '12.1'
    ios_pods
end

target 'flowplayer-objc-demo' do
    project 'flowplayer-objc-demo/flowplayer-objc-demo.xcodeproj'
    platform :ios, '12.1'
    ios_pods
end

target 'flowplayer-tvOS' do
    project 'flowplayer-tvOS/flowplayer-tvOS.xcodeproj'
    platform :tvos, '12.1'
    tvos_pods
end
