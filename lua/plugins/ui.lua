return {
  {
    "Mofiqul/vscode.nvim",
    config = function()
      require('vscode').setup({
      })
      vim.cmd.colorscheme("vscode")
    end
  },
  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = 'vscode',
          section_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { 'filename', 'lsp_status' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { { 'location', separator = { right = '' }, left_padding = 2 } },
        }
      })
    end,
  },

  -- -- Nvim-treesitter text objects
  -- {
  --   "nvim-treesitter/nvim-treesitter-textobjects",
  --   dependencies = "nvim-treesitter/nvim-treesitter",
  --   config = function()
  --     require("nvim-treesitter-textobjects")
  --   end,
  -- },

  -- Treesitter-integration
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "cpp", "python", "lua", "vim", "vimdoc", "markdown" },
        auto_install = true,
      })
    end,
  },

}
