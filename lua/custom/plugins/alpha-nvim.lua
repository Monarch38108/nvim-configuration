
return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'shellheim/ashaar.nvim',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

        -- Call ashaar
    local ashaar = require 'ashaar'

    -- Set header
    dashboard.section.header.val = {
      '███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   ',
      '███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ ',
      '███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███ ',
      '███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███ ',
      '███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███ ',
      '███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███ ',
      '███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███ ',
      ' ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  ',
    }
    dashboard.section.buttons.val = {
      dashboard.button('n', ' > New File', '<cmd>ene<CR>'),
      dashboard.button('f', '󰱼 > Find File', '<cmd>Telescope find_files<CR>'),
      dashboard.button('r', ' > Find Recent Files', '<cmd>Telescope oldfiles<CR>'),
      dashboard.button('c', ' > Configuration', '<cmd>edit ~/.config/nvim/init.lua<CR>'),
      dashboard.button('q', ' > Quit NVIM', '<cmd>qa<CR>'),
    }
        -- Give the returned couplet to alpha's footer
    dashboard.section.footer.val = ashaar()

    alpha.setup(dashboard.opts)
  end,
}
