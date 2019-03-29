class Middleware1
  def initialize(app, text:)
    @app = app
    @text = text
  end

  def call(env)
    puts @text
    @app.call(env)
  end
end
