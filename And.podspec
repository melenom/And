
Pod::Spec.new do |s|
  s.name             = 'And'
  s.version          = '0.0.2'
  s.summary          = 'And make your life better.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/melenom/And'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pz' => 'melenom@163.com' }
  s.source           = { :git => 'https://github.com/melenom/And.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.requires_arc = true
  s.swift_version = '5.0'
  s.source_files = 'And/Classes/**/*.{swift}'
end
