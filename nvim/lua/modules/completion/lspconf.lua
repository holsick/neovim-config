local conf = require('lspconfig')

conf.bashls.setup{}
conf.gopls.setup{}
conf.pyright.setup{

  cmd = { 'pyright-langserver', '--stdio' },
  ft = { 'python' },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = 'workspace',
        useLibraryCodeForTypes = true,
      }
    }
  },
  single_file_support = true,
}
conf.sumneko_lua.setup{}


vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false,
    signs = true,
    update_in_insert = true,
  }
)
