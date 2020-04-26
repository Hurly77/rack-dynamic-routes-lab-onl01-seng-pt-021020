class Application

  @@items = []

    def call(env)
      req = Rack::Request.new(env)
      resp = Rack::Response.new

      if req.path.match(/items/)
        item_name = req.path.split("/items/").last
        item = @@items.find{|i| i.name == item_name}
        else
        resp.write item.price

        resp.write "Item not found"
        resp.status = 400
      end
      if req.path.math(/items/)
      else
        resp.write "Route not found"
        resp.status = 404
      end

      resp.finish
    end

end
