module Squidception
  module Rails
    class Middleware
      def initialize(app)
        @app = app
      end
    
      def call(env)
        @env = env
        begin
          response = app.call(env)
        rescue Exception => e
          report_exception(e)
        end
      end 
    end
  end
end
