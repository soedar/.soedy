return {
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {"<leader>,", function() require('telescope.builtin').find_files() end},
      {"<leader>g", function() require('telescope.builtin').git_files() end},
      {"<leader>b", function() require('telescope.builtin').buffers() end},
      {"<leader>t", function() require('telescope.builtin').treesitter() end},
      {"<leader>e", function() require('telescope.builtin').diagnostics() end},
    }
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
}
