vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({
		'rose-pine/neovim',
		as='rose-pine',
		config=function()
			vim.cmd("colorscheme rose-pine")
		end
	})

	use('nvim-treesitter/nvim-treesitter',{run=':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
    use(
    "windwp/nvim-autopairs")
    use ("windwp/nvim-ts-autotag")
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
	 		{'L3MON4D3/LuaSnip'},

			{'rafamadriz/friendly-snippets'},
		}
	}
    use {
        'NvChad/nvim-colorizer.lua'
    }
    use {
         'nvim-lualine/lualine.nvim'
    }
    use {
        'nvim-tree/nvim-tree.lua'
    }
    use{"nvim-tree/nvim-web-devicons"}
   use 'rcarriga/nvim-notify'
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
        },
    --    after = "nvim-web-devicons", -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup()
        end,
    })
    use {
        "epwalsh/obsidian.nvim",tag="*",
        requires={
            "nvim-lua/plenary.nvim",
        }
    }

 end)
