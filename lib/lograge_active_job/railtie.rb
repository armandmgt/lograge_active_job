require 'rails/railtie'

module LogrageActiveJob
  Config = Struct.new(:custom_options)

  class Railtie < Rails::Railtie
    config.lograge_active_job = Config.new

    initializer('lograge_active_job.active_job') do
      ActiveSupport.on_load(:active_job) do
        require 'lograge_active_job/active_job'
        include LogrageActiveJob::ActiveJob
      end
    end
  end
end
