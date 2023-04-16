return {
  lsp = {
    config = {
      yamlls = {
        filetypes = { "yaml", "json" },
        settings = {
          yaml = {
            schemaDownload = {
              enable = true,
            },
            validate = true,
            schemas = {
              ["file:///Users/anasinnyk/.config/nvim/lua/user/yamlls/crds/devops/all.json"] = "*.yaml",
              -- ["https://raw.githubusercontent.com/anasinnyk/astrovim/main/yamlls/crds/devops/all.json"] = "*.yaml",
            },
          },
        },
      },
    },
  },
  plugins = {
    {
      "AstroNvim/astrocommunity",
      { import = "astrocommunity.pack.rust" },
      -- { import = "astrocommunity.pack.yaml" },
    },
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {},
      event = "User AstroFile",
      keys = {
        { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
      },
    },
    {
      "allaman/kustomize.nvim",
      requires = "nvim-lua/plenary.nvim",
      ft = "yaml",
      opts = { defaults = true },
    },
  }
}
