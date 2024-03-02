return {
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            local cmp_select = { behavior = cmp.SelectBehavior.Select }

            cmp.setup({
                preselect = "item",
                completion = {
                    completeopt = "menu,menuone,noinsert",
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
                    ["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
                    ["<CR>"] = cmp.mapping.confirm({ select = false }),
                }),
            })
        end,
    },
    { "L3MON4D3/LuaSnip" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        config = function()
            local lsp_zero = require("lsp-zero")
            lsp_zero.extend_lspconfig()
            lsp_zero.on_attach(function(client, bufnr)
                -- see :help lsp-zero-keybindings
                -- to learn the available actions
                lsp_zero.default_keymaps({ buffer = bufnr })
                vim.keymap.set("n", "<leader>.", function()
                    vim.lsp.buf.code_action()
                end, { buffer = true })
            end)

            require("mason").setup({})
            require("mason-lspconfig").setup({
                automatic_installation = true,
                ensure_installed = {},
                handlers = {
                    lsp_zero.default_setup,
                },
            })
        end,
    },
}
