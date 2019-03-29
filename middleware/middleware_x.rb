require_relative "middleware_1"
require_relative "middleware_2"

class MiddlewareX
  def initialize(app)
    @app = app
  end

  def call(env)
    middleware = Rack::Builder.new
    middleware.use Middleware1
    middleware.use Middleware2
    middleware.run @app
    middleware.call(env)
  end
end
