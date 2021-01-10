require 'rack'

# Something that responds to call, that's what Rack demands
class MyServer
    def call(env)
        return [ 200, {'Content-Type' => 'text/html'}, prety_response ]
    end

    def prety_response
        (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
    end
end
