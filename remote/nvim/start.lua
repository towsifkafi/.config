local status_ok, dashboard = pcall(require, "dashboard")
if not status_ok then
  vim.notify("Dashboard not found!")
  return
end
dashboard.setup({
  theme = "hyper",
  config = {
    header = {
      "               O  o                                  ",
      "          _\\\\_   o    ┏┓•       ┓                   ",
      "       \\\\/  o\\ .     ┗┓┓┏┳┓┏┓┏┓┃  - my vim sucks - ",
      "       //\\\\___=       ┗┛┗┛┗┗┣┛┗┛┗                   ",
      "          ''               ┛                      ",
    },
    shortcut = {
      { desc = '󰊳 Update', group = '@property', action = 'PlugUpdate', key = 'u' },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        desc = ' Theme',
        group = 'DiagnosticHint',
        action = 'Telescope colorscheme',
        key = 'a',
      },
      {
        desc = ' dotfiles',
        group = 'Number',
        action = 'BrowseConfig',
        key = 'd',
      },
    },
  },
})

-- require("noice").setup()

  require("noice").setup({
    views = { 
      cmdline_popup = {
        position = {
          row = "90%",
          col = "50%",
        },
        border = {
          style = "none",
          padding = { 1, 2 },
        },
        filter_options = {},
        win_options = {
          winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          --winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
        },
      },
      popupmenu = {
        relative = "editor",
        position = {
          row = "80%",
          col = "50%",
        },
        size = {
          width = 60,
          height = 10,
        },
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
        win_options = {
          winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
        },
      },
    },
  })

require("telescope").load_extension("noice")
require("bufferline").setup{}
require('lualine').setup()
require('telescope').load_extension('lazygit')
require('telescope').load_extension('themes')
require("telescope").load_extension('file_browser')
