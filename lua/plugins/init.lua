return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      lsp = {
        signature = {
          enabled = false,
        },
      },
        --
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback hello
      "rcarriga/nvim-notify",

    },
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
   --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
    },
    opts = {
        workspaces = {
          {
            name = "personal",
            path = "~/Documents/notes",
          },
        },

        ui = {
          enable = false,
        },
      -- see below for full list of options 👇
      },
    },
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
        "ts_ls"
        },
      },
    },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
   "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
   	"nvim-treesitter/nvim-treesitter",
   	oopts = {
      ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css"
   		},
   	},
   },
  {
    'nvim-tree/nvim-web-devicons',
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    --dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    lazy = false,
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = { 
      bullet = { left_pad = 1, right_pad = 1 },
    },
  },
}
