local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
  name = "EasyCodingStandard",
  meta = {
    url = "https://github.com/easy-coding-standard/easy-coding-standard",
    description = "Formatter for php files.",
  },
  method = FORMATTING,
  filetypes = { "php" },
  condition = function(utils)
    return utils.root_has_file("ecs.php")
  end,
  generator_opts = {
    command = "ecs",
    args = {
      "check",
      "--no-interaction",
      "--no-progress-bar",
      "--no-error-table",
      "--quiet",
      "--fix",
      "$FILENAME",
    },
    to_stdin = false,
    to_temp_file = true,
  },
  factory = h.formatter_factory,
})
