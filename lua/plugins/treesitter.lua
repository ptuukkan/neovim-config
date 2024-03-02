return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = { "windwp/nvim-ts-autotag" },
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "vim", "vimdoc", "query", "javascript", "html", "rust" },
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            autotag = {
                enable = true,
                enable_rename = true,
                enable_close = true,
                enable_close_on_slash = true,
            },
        })
    end,
}
