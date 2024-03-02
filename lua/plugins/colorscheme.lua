return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
        no_italic = true,
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme "catppuccin"
    end

}

-- return {
--     "rose-pine/neovim",
--     lazy = false,
--     name = "rose-pine",
--     priority = 1000,
--     opts = {
--         disable_italics = true,
--     },
--     config = function(_, opts)
--         require("rose-pine").setup(opts)
--         vim.cmd.colorscheme "rose-pine"
--         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--     end
-- }
