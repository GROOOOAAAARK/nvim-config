require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = { "lua-ls", "tsserver", "tailwindcss", "pyright", "terraformls", "bashls", "rust_analyzer" }--, "sonarlint"-- }
})

require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}

--require('sonarlint').setup({
--   server = {
--      cmd = {
--         'sonarlint-language-server',
--         -- Ensure that sonarlint-language-server uses stdio channel
--         '-stdio',
--         '-analyzers',
--         -- paths to the analyzers you need, using those for python and java in this example
--         vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
--         vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarcfamily.jar"),
--         vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
--      }
--   },
--   filetypes = {
--      -- Tested and working
--      'python',
--      'cpp',
--      -- Requires nvim-jdtls, otherwise an error message will be printed
--      'java',
--   }
--})

