require 'socket'

server = TCPServer.new('localhost', 3001)
loop do
  client = server.accept

  request_line = client.gets
  p request_line

  http_method == 'GET'
  path == '/'
  params = { 'sides' => '2', 'rolls' => '6' }

  http_method, path_and_params, http = request_line.split(' ')
  path, params = path_and_params.split('?')

  params = params.split('&').each_with_object({}) do |pair, hash|
    key, value = pair.split('=')
    hash[key] = value
  end

  client.puts request_line
  client.puts rand(6) + 1
  client.close
end
