-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
  return
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Change the Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- table of LSP servers and their configurations
local servers = {
  ["html"] = { capabilities = capabilities },
  ["cssls"] = {
    capabilities = capabilities,
    filetypes = { "css", "scss" },
  },
  ["tailwindcss"] = { capabilities = capabilities },
  ["emmet_ls"] = {
    capabilities = capabilities,
    filetypes = { "html", "typescriptreact", "javascriptreact", "scss" },
  },
  ["clangd"] = { capabilities = capabilities },
	["nil_ls"] = { capabilities = capabilities },
  ["pylsp"] = { capabilities = capabilities },
  ["gopls"] = {
    capabilities = capabilities,
    cmd = { "gopls" },
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  },
  ["rust_analyzer"] = {
    capabilities = capabilities,
    cmd = {
      "rustup",
      "run",
      "stable",
      "rust-analyzer",
    },
  },
  ["lua_ls"] = {
    capabilities = capabilities,
    settings = {
      Lua = {
        diagnostics = { globals = { "vim" } },
        workspace = {
          library = {
            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            [vim.fn.stdpath("config") .. "/lua"] = true,
          },
        },
      },
    },
  },
}

-- set up each LSP server
for server, config in pairs(servers) do
  lspconfig[server].setup(config)
end

-- configure typescript server with plugin
typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  },
})
