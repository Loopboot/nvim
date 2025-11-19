require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("cssls", {
  filetypes = { "css", "scss", "less" },
})

vim.lsp.config("tailwindcss", {
  filetypes = {
    "tsx",
    "jsx",
    "typescriptreact",
    "javascriptreact",
  },
})

vim.lsp.config("ruff", {
  filetypes = {
    "python",
  },
})

vim.lsp.config("emmet_language_server", {

  filetypes = {
    "html",
    "css",
    "scss",
    "typescriptreact",
    "javascriptreact",
  },
  init_options = {
    ---@type table<string, string>
    includeLanguages = {},
    --- @type string[]
    excludeLanguages = {},
    --- @type string[]
    extensionsPath = {},
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
    preferences = {},
    --- @type boolean Defaults to `true`
    showAbbreviationSuggestions = true,
    --- @type "always" | "never" Defaults to `"always"`
    showExpandedAbbreviation = "always",
    --- @type boolean Defaults to `false`
    showSuggestionsAsSnippets = false,
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
    syntaxProfiles = {},
    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
    variables = {},
  },
})

vim.lsp.config("dockerls", {
  filetypes = { "dockerfile" },
})

vim.lsp.config("docker_compose_language_service", {
  filetypes = { "yaml.docker-compose" },
})

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "pyright",
  "eslint_lsp",
  "tailwindcss",
  "emmet_language_server",
  "docker_compose_language_service",
  "docker_ls",
  "ruff",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
