require 'socket'

server = TCPServer.new('localhost', 3001)
loop do
  client = server.accept

  request_line = client.gets
  p request_line

  http_method == 'GET'
  path == '/'
  params = { 'sides' => '2', 'rolls' => '6' }

  client.puts request_line
  client.puts rand(6) + 1
  client.close
end
