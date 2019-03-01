Gem::Specification.new do |s|
  s.name        = 'rails5_lograge_middleware'
  s.version     = '1.1.1'
  s.summary     = 'Rails middleware for Lograge'
  s.description = 'Rails middleware for Lograge with support to log exceptions from Rails and ActiveJobs'
  s.authors     = ['Michał Zalewski']
  s.email       = 'michal@mzalewski.net'
  s.homepage    = 'https://github.com/armandmgt/rails_lograge_middleware'
  s.license     = 'MIT'

  s.files = `git ls-files lib`.split("\n")

  s.add_development_dependency 'rspec', '~> 3.5'

  s.add_runtime_dependency 'activesupport', '>= 4'
  s.add_runtime_dependency 'railties',      '>= 4'

  s.add_runtime_dependency 'lograge',       '< 1.0'
end
