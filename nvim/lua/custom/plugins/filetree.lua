return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
    require('neo-tree').setup {
      enable_git_status = true,
      enable_diagnostics = true,
      window = {
        position = "right",
      },
      vim.keymap.set('n', '<leader>ft', '<Cmd>NeoTreeFocusToggle<Cr>', { desc = '[F]ile [T]oggle' })
    }
  end,
}
