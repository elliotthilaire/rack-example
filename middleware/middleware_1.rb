class Middleware1
  def initialize(app)
    @app = app
  end

  def call(env)
    @app.call(env)
  end
end
