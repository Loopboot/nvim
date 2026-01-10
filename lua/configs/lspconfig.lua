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
    "php",
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

vim.lsp.config("phpactor", {
  filetypes = { "php" },
})

vim.lsp.config("intelephense", {
  filetypes = { "php" },
})

vim.lsp.config("rust_analyzer", {
  filetypes = { "rust" },
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true, -- Recommended: enables all features (like dev dependencies)
      },
      checkOnSave = {
        command = "clippy", -- Recommended: runs 'cargo clippy' instead of 'cargo check' on save
      },
    },
  },
})

vim.lsp.config("ts_ls", {
  filetypes = {
    "javascriptreact",
    "typescriptreact",
    "typescript",
    "javascript",
  },
})

vim.lsp.config("basedpyright", {
  filetypes = { "python" },
})

-- dockerls: Set filetypes (Standard for Dockerfile)
vim.lsp.config("dockerls", {
  filetypes = { "dockerfile" },
})

-- docker_compose_language_service: Set filetypes (Standard for Compose YAML)
vim.lsp.config("docker_compose_language_service", {
  filetypes = { "yaml.docker-compose" },
})
local servers = {
  "html",
  "cssls",
  "ts_ls",
  "basedpyright",
  "eslint_lsp",
  "tailwindcss",
  "emmet_language_server",
  "dockerls",
  "docker_compose_language_service",
  "ruff",
  "intelephense",
  "phpactor",
  "rust_analyzer",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
