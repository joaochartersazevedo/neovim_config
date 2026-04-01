return {
  -- Flutter & Dart support (handles dartls LSP automatically)
  {
    "akinsho/flutter-tools.nvim",
    ft = { "dart" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      flutter_lookup_cmd = nil, -- uses `flutter` from PATH
      ui = {
        border = "rounded",
        notification_style = "native",
      },
      decorations = {
        statusline = {
          app_version = true,
          device = true,
        },
      },
      lsp = {
        on_attach = function()
          -- You can set your LSP on_attach keymaps here
        end,
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          renameFilesWithClasses = "prompt",
          enableSnippets = true,
          updateImportsOnRename = true,
        },
      },
    },
  },

  -- Add Dart treesitter parser
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      ---@diagnostic disable-next-line: undefined-global
      vim.list_extend(opts.ensure_installed, {
        "dart",
      })
    end,
  },

  -- JSON LSP (jsonls) + schemastore
  { import = "lazyvim.plugins.extras.lang.json" },

  -- TypeScript/JavaScript LSP
  { import = "lazyvim.plugins.extras.lang.typescript" },
}
