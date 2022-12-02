local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    { noremap = true, silent = true }
  )
end

vim.g.mapleader = ' '

-- Disable the arrows
key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')

-- General key maps
key_mapper('n', '<leader>nv', ':NvimTreeToggle<CR>')

-- Coding
key_mapper('n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>')
key_mapper('n', '<leader>gD', ':lua vim.lsp.buf.declaration()<CR>')
key_mapper('n', '<leader>gi', ':lua vim.lsp.buf.implementation()<CR>')
key_mapper('n', '<leader>gw', ':lua vim.lsp.buf.document_symbol()<CR>')
key_mapper('n', '<leader>gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
key_mapper('n', '<leader>gr', ':lua vim.lsp.buf.references()<CR>')
key_mapper('n', '<leader>gt', ':lua vim.lsp.buf.type_definition()<CR>')
key_mapper('n', '<leader>K', ':lua vim.lsp.buf.hover()<CR>')
key_mapper('n', '<leader><c-k>', ':lua vim.lsp.buf.signature_help()<CR>')
key_mapper('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')
key_mapper('n', '<leader>e', ':lua vim.diagnostic.open_float()<CR>')
