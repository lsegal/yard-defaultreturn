WINDOWS = (RUBY_PLATFORM =~ /win32|cygwin/ ? true : false) rescue false
SUDO = WINDOWS ? '' : 'sudo'

task :default => :install

desc "Builds the gem"
task :gem do
  sh "gem build yard-defaultreturn.gemspec"
end

desc "Installs the gem"
task :install => :gem do 
  sh "#{SUDO} gem install yard-defaultreturn-1.0.0.gem --no-rdoc --no-ri"
end

