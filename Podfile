# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'WeexBenchmark' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!
  platform :ios, '8.0'
  # Pods for WeexBenchmark
  pod 'React', :path => 'node_modules/react-native', :subspecs => [
    'Core',
    'DevSupport', # Include this to enable In-App Devmenu if RN >= 0.43
    'RCTText',
    'RCTNetwork',
    'RCTWebSocket', # needed for debugging
    'BatchedBridge',
    'RCTImage',
    # Add any other subspecs you want to use in your project
  ]
  pod 'WeexSDK', "0.17.0"
  pod 'SDWebImage', '3.7.5'
  pod 'yoga', :path => 'node_modules/react-native/ReactCommon/yoga'
  pod 'DoubleConversion', :podspec => 'node_modules/react-native/third-party-podspecs/DoubleConversion.podspec'
  pod 'GLog', :podspec => 'node_modules/react-native/third-party-podspecs/GLog.podspec'
  pod 'Folly', :podspec => 'node_modules/react-native/third-party-podspecs/Folly.podspec'

  target 'WeexBenchmarkTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'WeexBenchmarkUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
