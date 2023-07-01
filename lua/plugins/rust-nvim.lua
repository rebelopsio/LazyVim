return {
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "saecki/crates.nvim",
    },
    config = function()
      require("rust-tools").setup({
        tools = {
          autoSetHints = true,
          hover_with_actions = true,
          runnables = {
            use_telescope = true,
          },
          debugger = {
            use_telescope = true,
          },
        },
        inlay_hints = {
          auto = true,
          only_current_line = false,
          show_parameter_hints = false,
          parameter_hints_prefix = "<-",
          other_hints_prefix = "=>",
          max_len_align = false,
          max_len_align_padding = 1,
          right_align = false,
          right_align_padding = 7,
          highlight = "Comment",
        },
        server = {
          on_attach = function(client, bufnr)
            require("vim.lsp").common_on_attach(client, bufnr)
            local rt = require("rust-tools")
            vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
          end,
          --capabilities = require("vim.lsp").common_capabilities(),
        },
      })
    end,
    keys = {
      { "<leader>Rr", "<cmd>RustRunnables<Cr>", "Runnables" },
      { "<leader>Rt", "<cmd>lua _CARGO_TEST()<cr>", "Cargo Test" },
      { "<leader>Rm", "<cmd>RustExpandMacro<Cr>", "Expand Macro" },
      { "<leader>Rc", "<cmd>RustOpenCargo<Cr>", "Open Cargo" },
      { "<leader>Rp", "<cmd>RustParentModule<Cr>", "Parent Module" },
      { "<leader>Rd", "<cmd>RustDebuggables<Cr>", "Debuggables" },
      { "<leader>Rv", "<cmd>RustViewCrateGraph<Cr>", "View Crate Graph" },
      {
        "<leader>RR",
        "<cmd>lua require('rust-tools/workspace_refresh')._reload_workspace_from_cargo_toml()<Cr>",
        "Reload Workspace",
      },
      { "<leader>Ro", "<cmd>RustOpenExternalDocs<Cr>", "Open External Docs" },
      { "<leader>Ry", "<cmd>lua require'crates'.open_repository()<cr>", "[crates] open repository" },
      { "<leader>RP", "<cmd>lua require'crates'.show_popup()<cr>", "[crates] show popup" },
      { "<leader>Ri", "<cmd>lua require'crates'.show_crate_popup()<cr>", "[crates] show info" },
      { "<leader>Rf", "<cmd>lua require'crates'.show_features_popup()<cr>", "[crates] show features" },
      { "<leader>RD", "<cmd>lua require'crates'.show_dependencies_popup()<cr>", "[crates] show dependencies" },
    },
  },
  {
    "saecki/crates.nvim",
    tag = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup({
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
        popup = {
          border = "rounded",
        },
      })
    end,
  },
}
