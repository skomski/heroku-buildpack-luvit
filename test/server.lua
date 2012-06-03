local http = require("http")
local string = require("string")
local port = process.env.PORT or 8080

http.createServer(function (req, res)
  local body = "Hello world\n"
  res:writeHead(200, {
    ["Content-Type"] = "text/plain",
    ["Content-Length"] = #body
  })
  res:finish(body)
end):listen(port)

print(string.format("[%d] Server started", port))
