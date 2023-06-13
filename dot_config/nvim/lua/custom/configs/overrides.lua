local M = {}

M.treesitter = {
  ensure_installed = {
    "astro",
    "c",
    "css",
    "dockerfile",
    "fish",
    "go",
    "graphql",
    "html",
    "javascript",
    "lua",
    "markdown",
    "markdown_inline",
    "php",
    "python",
    "regex",
    "sql",
    "tsx",
    "twig",
    "typescript",
    "vim",
    "zig",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    "astro-language-server",
    "black",
    "clang-format",
    "clangd",
    "css-lsp",
    "deno",
    "html-lsp",
    "lua-language-server",
    "prettier",
    "shfmt",
    "stylua",
    "typescript-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
