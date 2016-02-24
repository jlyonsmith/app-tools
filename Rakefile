task :default => :test

VERSION = '1.1.0'
BUILD = '20160223.2'

task :test do
  Dir.glob('./test/test_*.rb').each { |file| require file}
end

task :vamper do
  `vamper -u`
  `git add :/`
  `git commit -m 'Update version info'`
  puts "Updated version to #{VERSION}-#{BUILD}"
end

task :release do
  `git tag -a 'v#{VERSION}' -m 'Release v#{VERSION}-#{BUILD}'`
  `git push --follow-tags`
  `rm *.gem`
  `gem build app-tools.gemspec`
  `gem push app-tools-#{VERSION}.gem`
end
