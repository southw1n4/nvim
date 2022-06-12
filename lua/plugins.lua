return require('packer').startup(function()

  
  use 'wbthomason/packer.nvim'
  use 'mfussenegger/nvim-dap'
  use 'akinsho/toggleterm.nvim'
  use 'tamton-aquib/staline.nvim'
   use {
    'andersevenrud/nordic.nvim',
    config = function()
        -- The table used in this example contains the default settings.
        -- Modify or remove these to your liking (this also applies to alternatives below):
        require('nordic').colorscheme({
            -- Underline style used for spelling
            -- Options: 'none', 'underline', 'undercurl'
            underline_option = 'none',

            -- Italics for certain keywords such as constructors, functions,
            -- labels and namespaces
            italic = false,

            -- Italic styled comments
            italic_comments = false,

            -- Minimal mode: different choice of colors for Tabs and StatusLine
            minimal_mode = false,

            -- Darker backgrounds for certain sidebars, popups, etc.
            -- Options: true, false, or a table of explicit names
            -- Supported: terminal, qf, vista_kind, packer, nvim-tree, telescope, whichkey
            alternate_backgrounds = false,

            -- Callback function to define custom color groups
            -- See 'lua/nordic/colors/example.lua' for example defitions
            custom_colors = function(c, s, cs)
              return {}
            end
        })
    end
   }
   use {
     'kyazdani42/nvim-tree.lua',
     requires = 'kyazdani42/nvim-web-devicons'
   }
   use {
     'akinsho/bufferline.nvim',
     requires = 'kyazdani42/nvim-web-devicons'
   }
   use 'neoclide/coc.nvim'
   use 'iamcco/markdown-preview.nvim'
   requires = 'iamcco/mathjax-support-for-mkdp'
end)
