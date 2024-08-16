return {
  { "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  { "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
    end
  },
  { "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("lspconfig").lua_ls.setup {
	capabilities = capabilities
      }
      require("lspconfig").rust_analyzer.setup {
	capabilities = capabilities
      }
      require("lspconfig").tsserver.setup {
	capabilities = capabilities
      }
      require("lspconfig").tailwindcss.setup {
	capabilities = capabilities
      }
      require("lspconfig").ruby_lsp.setup {
	capabilities = capabilities
      }
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end
  }
}
