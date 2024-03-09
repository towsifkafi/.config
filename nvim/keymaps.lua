-- RELOAD THE INIT FILE
vim.api.nvim_set_keymap('n', '<Leader><Leader>', '', {
    noremap = true,
    silent = true,
    callback = function()
        -- Reloads the Vim (or Neovim) configuration file
        vim.cmd('source $MYVIMRC')
        -- Sends a notification
        vim.notify('Reloaded init.vim', vim.log.levels.INFO)
    end,
})

-- THEME PICKER
vim.api.nvim_create_user_command('BrowseConfig', function()
  require'telescope'.extensions.file_browser.file_browser({
    prompt_title = "< .config Browser >",
    cwd = vim.fn.expand("$HOME/.config"),
  })
end, {})

vim.api.nvim_set_keymap('n', '-', '', {
    noremap = true,
    silent = true,
    callback = function()
        -- Execute the Telescope themes command
        vim.cmd('Telescope themes')
    end,
})

-- WHICH KEY
vim.api.nvim_set_keymap('n', '<Leader><Space>', '', {
    noremap = true,
    silent = true,
    callback = function()
        -- Execute the Telescope themes command
        vim.cmd('WhichKey')
    end,
})

-- LSP DIAGNOSTICS
vim.api.nvim_set_keymap('n', '<Leader>ld', '', {
    noremap = true,
    silent = true,
    callback = function()
        -- Execute the Telescope themes command
        vim.cmd('Telescope diagnostics')
    end,
})
