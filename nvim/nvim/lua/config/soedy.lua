require('telescope').load_extension('fzf')
require('nvim-treesitter.configs').setup({
  ensure_installed = { "vim", "vimdoc", "go", "ruby", "typescript", "javascript", "python", "yaml", "json", "html", "terraform"},
  auto_install = false,
  indent = { enable = true },
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
})
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'gopls',
    'vtsls',
    'eslint',
    'terraformls',
    'ruby_lsp',
  }
})

--require('lspconfig').gopls.setup{
--  settings = {
--    gopls = {
--      analyses = {
--        unusedparams = true,
--      },
--      staticcheck = true,
--      gofumpt = true,
--    },
--  },
--}
--require('lspconfig').vtsls.setup{}
--require('lspconfig').eslint.setup({
--  --- ...
-----  on_attach = function(client, bufnr)
-----    vim.api.nvim_create_autocmd("BufWritePre", {
-----      buffer = bufnr,
-----      command = "EslintFixAll",
-----    })
-----  end,
--})
--require('lspconfig').terraformls.setup{}
--require('lspconfig').ruby_lsp.setup{
--  init_options = {
--    formatter = 'auto',
--    linters = { 'standard' },
--  },
--}

vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.number = true
vim.o.scrolloff = 15
vim.o.signcolumn = "yes"
vim.o.clipboard = "unnamed"
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.cindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.updatetime = 250

vim.cmd [[
  colorscheme base16-onedark
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]


vim.api.nvim_set_keymap("n", "<leader>z", "ZZ", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>w", ":w<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", ":q<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><cr>", ":nohlsearch<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bn", ":bn<cr>", { noremap = true, silent = true })


vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { noremap = true, silent = true })


--vim.api.nvim_create_autocmd("BufWritePre", {
--  callback = function()
--    local mode = vim.api.nvim_get_mode().mode
--    local filetype = vim.bo.filetype
--    if vim.bo.modified == true and mode == 'n' then
--        vim.cmd('lua vim.lsp.buf.format()')
--    end
--  end
--})

--vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*.go",
--  callback = function()
--    local params = vim.lsp.util.make_range_params()
--    params.context = {only = {"source.organizeImports"}}
--    -- buf_request_sync defaults to a 1000ms timeout. Depending on your
--    -- machine and codebase, you may want longer. Add an additional
--    -- argument after params if you find that you have to write the file
--    -- twice for changes to be saved.
--    -- E.g., vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
--    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
--    for cid, res in pairs(result or {}) do
--      for _, r in pairs(res.result or {}) do
--        if r.edit then
--          local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
--          vim.lsp.util.apply_workspace_edit(r.edit, enc)
--        end
--      end
--    end
--    vim.lsp.buf.format({async = false})
--  end
--})

vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end
})

vim.diagnostic.config({
  virtual_text = false,
})

vim.cmd('autocmd FileType ruby setlocal indentkeys-=.')
vim.cmd('autocmd FileType json setlocal tabstop=2 shiftwidth=2')
vim.cmd('autocmd FileType terraform setlocal tabstop=2 shiftwidth=2')
