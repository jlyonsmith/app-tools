Gem::Specification.new do |s|
  s.name = "app-tools"
  s.version = "1.6.0"
  s.summary = %q{Tools for creating iPhone apps}
  s.description = %q{Generate IPA files with correct Swift and symbol files for uploading to iTunesConnect.
Resign IPA files with correct certificate and provisioning profiles for distribution.  Upload IPA files to iTunesConnect.
}
  s.authors = ["John Lyon-Smith"]
  s.email = ["john@jamoki.com"]
  s.platform = Gem::Platform::RUBY
  s.license = "MIT"
  s.homepage = 'http://github.com/jlyonsmith/app-tools'
  s.require_paths = ['lib']
  s.required_ruby_version = '~> 2.0'
  s.files = `git ls-files -- lib/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency('code-tools', '~> 5.0')
  s.add_dependency('methadone', '~> 1.9')
  s.add_dependency('CFPropertyList', '~> 2.3')
  s.add_dependency('rubyzip', '~> 1.1')
  s.add_dependency('spaceship', '~> 0.22')
  s.add_dependency('highline', '~> 1.7')
end
