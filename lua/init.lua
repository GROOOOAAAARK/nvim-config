-- Mason
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})


-- LSP configs
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


-- Debugger DAP config (uses vscode debugger)
-- require('dap.ext.vscode').load_launchjs(nil, {})
-- local dap, dapui =require("dap"),require("dapui")
-- dap.listeners.after.event_initialized["dapui_config"]=function()
--   dapui.open()
-- end
-- dap.listeners.before.event_terminated["dapui_config"]=function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"]=function()
--   dapui.close()
-- end
--
-- vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
-- vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})
-- vim.keymap.set('n', '<F5>', require 'dap'.continue)
-- vim.keymap.set('n', '<F10>', require 'dap'.step_over)
-- vim.keymap.set('n', '<F11>', require 'dap'.step_into)
-- vim.keymap.set('n', '<F12>', require 'dap'.step_out)
-- vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)
--
