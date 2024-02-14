local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{   'phaazon/hop.nvim' },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker",
            "3rd/image.nvim",
		}
	},
	{
		'nvim-treesitter/nvim-treesitter'
	},
	{
		'neovim/nvim-lspconfig'
	},
	-- {
	-- 	'joshdick/onedark.vim'
	-- },
    {
         "folke/tokyonight.nvim",
         lazy = false,
         priority = 1000,
         opts = {},
    },
    {  'hrsh7th/cmp-nvim-lsp' },
    {  'hrsh7th/cmp-buffer' },
    {  'hrsh7th/cmp-path' },
    {  'hrsh7th/cmp-cmdline' },
    {  'hrsh7th/nvim-cmp' },
    {
        "williamboman/mason.nvim"
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {   'jose-elias-alvarez/null-ls.nvim'},
    {   'windwp/nvim-autopairs',
        event = "InsertEnter"
    },
    {
        'windwp/nvim-ts-autotag'
    },
    {   'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
    {
        "hedyhli/outline.nvim",
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    { 'lewis6991/gitsigns.nvim' },
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies =  {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        },
    },
    {   'akinsho/toggleterm.nvim', version = "*", config = true},
    { 
        "nvim-neotest/neotest",
        dependencies = {
          "nvim-lua/plenary.nvim",
          'nvim-neotest/neotest-jest',
          "antoinemadec/FixCursorHold.nvim",
          "nvim-treesitter/nvim-treesitter"
        }
    },
    {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    },
    {
        "ThePrimeagen/refactoring.nvim",
         dependencies = {
           "nvim-lua/plenary.nvim",
           "nvim-treesitter/nvim-treesitter",
         }
    },
    {   'hrsh7th/cmp-nvim-lsp-signature-help'   },
    {
        'linrongbin16/lsp-progress.nvim',
    },
    {   'hrsh7th/vim-vsnip'   },
    {   'hrsh7th/vim-vsnip-integ'   },
    {   'petertriho/cmp-git', dependencies = {'nvim-lua/plenary.nvim'}	},
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {   "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {   "ahmedkhalf/project.nvim"   },
    {   'saecki/crates.nvim',
        luasniptag = 'stable'
    },
    -- {
    --     "L3MON4D3/LuaSnip",
    --     version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    --     build = "make install_jsregexp",
    --     dependencies = { "rafamadriz/friendly-snippets" },
    -- },
    -- {   'hrsh7th/cmp-vsnip'   },
    -- {   'hrsh7th/cmp-vsnip-integ'   },
    -- { 'L3MON4D3/LuaSnip' },
    -- { 'SirVer/ultisnips' },
    -- { 'quangnguyen30192/cmp-nvim-ultisnips' },
})

