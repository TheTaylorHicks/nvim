return {
	{ 'projekt0n/github-nvim-theme', lazy = false, priority = 1000 },
	{ 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
    -- treesitter pinned to v0.9.2 until other plugins adapt to updated capture names
    -- see: https://github.com/nvim-treesitter/nvim-treesitter/issues/2293#issuecomment-1900679583
	{ 'nvim-treesitter/nvim-treesitter', tag = 'v0.9.2', build = ':TSUpdate' },
	{ 'nvim-treesitter/playground' },
	{ 'mbbill/undotree' },
	{ 'tpope/vim-fugitive' },
	-- Mason
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
	-- LSP Support
	{ 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', lazy = true, config = false },
	{ 'neovim/nvim-lspconfig', dependencies = {{ 'hrsh7th/cmp-nvim-lsp' }} },
	{ 'onsails/lspkind.nvim' },
	-- Autocompletion
	{ 'hrsh7th/nvim-cmp', dependencies = {{ 'L3MON4D3/LuaSnip' }} },
}
