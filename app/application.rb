class Application

  @@items = []

    def call(env)
      req = Rack::Request.new(env)
      resp = Rack::Response.new

      if req.path=="/items"
          resp.write "You requested the items"
      else
        resp.write "Route not found"
        resp.status = 404
      end

      resp.finish
    end

end
