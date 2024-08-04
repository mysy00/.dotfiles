return {
  {
    "hrsh7th/nvim-cmp",
    {
      "garymjr/nvim-snippets",
      opts = {
        search_paths = { vim.fn.stdpath("config") .. "/misc/snippets" },
      },
    },
    opts = function(_, opts)
      -- Set view to follow cursor while typing
      opts.view = {
        entries = {
          follow_cursor = true,
        },
      }
    end,
  },
}
