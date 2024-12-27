return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {},
        ruff = {},
        pyright = {
          -- Using Ruff's import organizer
          disableOrganizeImports = true,
          analysis = {
            -- Ignore all files for analysis to exclusively use Ruff for linting
            ignore = { "*" },
          },
        },
      },
      setup = {
        rust_analyzer = function(_, opts) -- do not setup twice with mason
          return true
        end,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "vim",
        "yaml",
        "rust",
        "ron",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "ninja",
        "rst",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "goimports",
        "gofumpt",
        "gomodifytags",
        "impl",
        "ruff",
      },
    },
  },
  { import = "lazyvim.plugins.extras.lang.json" },
}
