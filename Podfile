# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'
inhibit_all_warnings!

target 'LifetimeTracker-Sample' do
 use_frameworks!
 pod 'LifetimeTracker'
end

post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    config.build_settings.delete('CODE_SIGNING_ALLOWED')
    config.build_settings.delete('CODE_SIGNING_REQUIRED')
  end
end