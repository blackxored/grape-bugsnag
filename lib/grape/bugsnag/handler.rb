module Grape
  module Bugsnag
    module Handler
      def handle_error(e)
        ::Bugsnag.notify(e)
        super
      end

    end
  end
end

Grape::Middleware::Error.send(:prepend, Grape::Bugsnag::Handler)
