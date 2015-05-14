local lapis = require("lapis")
local app = lapis.Application()

local db = require "lapis.db"

app:get("/", function()
  return {
    json = db.query("show tables like 'users'")
  }
end)

return app