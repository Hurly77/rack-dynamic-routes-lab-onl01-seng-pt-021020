class Application

  @@items = [Item.new(name, price)]

def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)
if req.path=="/items/price"
    resp.write @@items[0].price
  elsif req.path=="/items/price"

  else
    resp.write "Route not found"
    resp.status = 404
end


resp.finish
end

end
