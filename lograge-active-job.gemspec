Gem::Specification.new do |s|
  s.name        = 'lograge_active_job'
  s.version     = '1.2.0'
  s.summary     = 'ActiveJob logging for Lograge'
  s.description = 'ActiveJob logging for Lograge'
  s.authors     = ['Armand Mégrot']
  s.email       = 'armand.megrot@gmail.com'
  s.homepage    = 'https://github.com/armandmgt/lograge_active_job'
  s.license     = 'MIT'

  s.files = Dir.glob('lib/**/*') + [ 'lograge-active-job.gemspec' ]

  s.add_development_dependency 'rspec', '~> 3.5'

  s.add_runtime_dependency 'activesupport', '>= 4'
  s.add_runtime_dependency 'railties',      '>= 4'

  s.add_runtime_dependency 'lograge',       '< 1.0'
end
