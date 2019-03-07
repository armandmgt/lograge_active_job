# A [Lograge](https://github.com/roidrage/lograge) extensions for Rails

Rails middleware for Lograge with support to log exceptions ActiveJobs.

Logs:
* Exceptions occurred during running jobs on ActiveJob (Rails 4.2+)

# Installation

Add line to your application's Gemfile:
```ruby
gem 'rails' # minimal version is 4.0
gem 'lograge'
gem 'lograge_active_job'
```

Now, gem should catch all exceptions thrown by ActiveJobs and save them to Lograge.

Please remember about [Lograge configuration](https://github.com/roidrage/lograge#installation).

# Custom setup

You can configure additional fields, which will be logged for every exception.

```ruby
# config/initializers/lograge.rb
Rails.configure do |config|
  config.rails_lograge_middleware.custom_options = lambda do |exception, job|
    # == Parameters:
    # exception:
    #   Occurred exception
    # job:
    #   ActiveJob instance, which crashed
    #
    # == Returns:
    # Hash with elements to write to log
    #
    {
	# Your custom options
    }
  end
end
```

References:

[Rack::Request](http://www.rubydoc.info/gems/rack/Rack/Request)
