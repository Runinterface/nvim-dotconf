return {
  {
    'echasnovski/mini.nvim',
    event = "VeryLazy",
    version = false
  },
  {
    'wadackel/vim-dogrun',
    event = "VimEnter",
    version = false
  },
  {
    'echasnovski/mini.starter',
    event = "VimEnter",
    version = false,
    opts = {
      header = "Good morning, samurai"
    },
    config = function(_, opts)
      require('mini.starter').setup(opts)
    end
  },
  {
    'echasnovski/mini.completion',
    event = 'VeryLazy',
    version = false,
    opts = { },
    config = function(_, opts)
      require('mini.completion').setup(opts)
    end
  },
  {
    'echasnovski/mini.trailspace',
    event = "VeryLazy",
    version = false,
    opts = { },
    config = function(_, opts)
      require('mini.trailspace').setup(opts)
    end
  },
  {
    'echasnovski/mini.indentscope',
    event ="VeryLazy",
    version = false,
    opts = { },
    config = function(_, opts)
      require('mini.indentscope').setup(opts)
    end
  },
  {
    'echasnovski/mini.pairs',
    event = 'VeryLazy',
    version = false,
    opts = { },
    config = function(_, opts)
      require('mini.pairs').setup(opts)
    end
  },
  {
    'echasnovski/mini.notify',
    event = "VeryLazy",
    version = false,
    opts = { },
    config = function(_, opts)
      require('mini.notify').setup(opts)
    end
  },
  {
    'echasnovski/mini.cursorword',
    event = 'VeryLazy',
    version = false,
    opts = { },
    config = function(_, opts)
      require('mini.cursorword').setup(opts)
    end
  },
  {
    'echasnovski/mini.comment',
    event = "VeryLazy",
    version = false,
    opts = {
      mappings = {
        comment = 'gc',
        comment_line = 'gcc',
        comment_visual = 'gc',
        textobject = 'gc',
      },
      hooks = {
        pre = function() end,
        post = function() end,
      },
    },
    config = function(_, opts)
      require('mini.comment').setup(opts)
    end
  },
  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
