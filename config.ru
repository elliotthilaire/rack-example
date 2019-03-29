require 'rack'

require_relative 'middleware/middleware_x'

require_relative 'hello_world'

use MiddlewareX

run HelloWorld
