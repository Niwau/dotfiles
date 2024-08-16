vim.opt.relativenumber = true
lvim.transparent_window = true
lvim.lsp.automatic_servers_installation = true
lvim.format_on_save.enabled = true
lvim.builtin.lualine.options.theme = "catppuccin"
lvim.colorscheme = "catppuccin"

lvim.plugins = {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true
    },
  },
}
