# none-ls-ecs.nvim

This plugin for [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) allows to use PHP
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
    config = function()
        require("null-ls").register(require("none-ls-ecs.formatting"))
    end,
    dependencies = {
        "gbprod/none-ls-ecs.nvim",
    },
  },
}
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
