module LogrageActiveJob
  module ActiveJob
    extend ActiveSupport::Concern

    included do
      rescue_from(StandardError) do |e|
        log_exception(e)
      end

      def log_exception(e)
        entry = {
            name:       self.class.name,
            id:         self.job_id,
            arguments:  self.arguments.any? ? ::ActiveJob::Arguments.serialize(self.arguments) : [],
            queue_name: self.queue_name,
            error:      "#{e.class}: #{e.message}",
            backtrace:  e.backtrace,
        }

        if Rails.configuration.lograge_active_job.custom_options
          custom_options = Rails.configuration.lograge_active_job.custom_options.call(e, self)
          entry.merge! custom_options
        end

        self.logger.public_send Lograge.log_level, Lograge.formatter.call(entry)
      end
    end
  end
end
