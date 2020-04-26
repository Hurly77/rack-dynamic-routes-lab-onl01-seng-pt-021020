class Application

def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)
if req.path=="/items"
    resp.write ""
  else
    resp.write "Route not found"
end


resp.finish
end

end
