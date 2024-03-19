# none-ls-ecs.nvim

This plugin is a source for [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) allows to use PHP
[Easy coding standard](https://github.com/easy-coding-standard/easy-coding-standard) formatter in Neovim
with none-ls.nvim.

**Note:** This plugin is not intended to be used alone, it is a dependency of [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim).

## 📦 Installation

This should be used as a dependency of **none-ls.nvim**.

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "gbprod/none-ls-ecs.nvim",
    },
  },
}
```

## Setup

Follow the steps in null-ls [setup](https://github.com/nvimtools/none-ls.nvim?tab=readme-ov-file#setup) section.

```lua
local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    require("none-ls-ecs.formatting"),
    ...
  }
})
```

## FAQ

How to trigger the formatter only if the project is using Easy coding standard?

```lua
null_ls.register(require("none-ls-ecs.formatting").with({
  condition = function(utils)
    return utils.root_has_file("ecs.php")
  end,
}))
```

How to use project's ecs bin instead of globally installed one?

```lua
null_ls.register(require("none-ls-ecs.formatting").with({
  command = "vendor/bin/ecs",
  condition = function(utils)
    return utils.root_has_file("vendor/bin/ecs")
  end,
}))
```

## Related projects

You can search for sources via the [`none-ls-sources` topic](https://github.com/topics/none-ls-sources).
