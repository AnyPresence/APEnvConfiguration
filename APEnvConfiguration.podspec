Pod::Spec.new do |s|
  s.name             = "APEnvConfiguration"
  s.version          = "0.1.3"
  s.summary          = "Easily switch between development environments/ configurations"
  s.description      = <<-DESC
Super-simple environment configuration for iOS apps. Switch between environments by changing one word.
                       DESC
  s.homepage         = "https://github.com/AnyPresence/APEnvConfiguration"
  s.license          = 'MIT'
  s.author           = { "David Benko" => "dbenko@anypresence.com" }
  s.source           = { :git => "https://github.com/AnyPresence/APEnvConfiguration.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/anypresence'

  s.platform     = :ios
  s.requires_arc = true
  
  s.dependency 'DBEnvironmentConfiguration'

  s.source_files = 'APEnvConfiguration/**/*.{h,m}'
end
