class Application

# @@items = [Items.new(name,price)]

def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)

if req.path=="/items"
  rep.write "Yo"
    resp.write "Route not found"
    resp.status = 404
end


resp.finish
end

end
