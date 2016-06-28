task :default => :test

VERSION = '1.12.0'
BUILD = '20160628.0'
TOOL = 'app-tools'

task :test do
  Dir.glob('./test/test_*.rb').each { |file| require file}
end

task :vamper do
  `vamper -u`
  `git add :/`
  `git commit -m 'Update version info'`
  puts "Updated version"
end

task :release do
  `git tag -a 'v#{VERSION}' -m 'Release v#{VERSION}-#{BUILD}'`
  puts "Pushing tags to GitHub..."
  `git push --follow-tags`
  `rm *.gem`
  `gem build #{TOOL}.gemspec`
  puts "Pushing gem..."
  `gem push #{TOOL}-#{VERSION}.gem`
end
