return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      tailwindcss = {
        filetypes_exclude = { "markdown" },
        filetypes_include = {},
        settings = {
          tailwindCSS = {
            classFunctions = { "cva", "cx" },
            includeLanguages = {
              elixir = "html-eex",
              eelixir = "html-eex",
              heex = "html-eex",
            },
          },
        },
      },
    },
    setup = {
      tailwindcss = function(_, opts)
        opts.filetypes = opts.filetypes or {}
        vim.list_extend(opts.filetypes, vim.lsp.config.tailwindcss.filetypes)
        --- @param ft string
        opts.filetypes = vim.tbl_filter(function(ft)
          return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
        end, opts.filetypes)
        vim.list_extend(opts.filetypes, opts.filetypes_include or {})
      end,
    },
  },
}
