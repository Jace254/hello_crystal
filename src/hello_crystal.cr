require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/html"
  # Send the HTML response
  context.response.print <<-HTML
  <!DOCTYPE html>
  <html>
  <head>
    <title>Crystal Web Server</title>
  </head>
  <body>
    <h1>Hello from Crystal!</h1>
    <p>This is a simple web server written in Crystal.</p>
  </body>
  </html>
  HTML
end

address = server.bind_tcp 8080
puts "Listening on http://#{address}"
server.listen