-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Força a coluna de sinais a estar sempre presente (tamanho fixo)
-- Isso evita o cálculo de redimensionamento que está causando o crash
vim.opt.signcolumn = "yes"
-- Ou "yes:1" ou "yes:2" dependendo da sua preferência
