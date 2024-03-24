local nvim = vim
local map = nvim.keymap.set

-- NEOVIDE CONFIG
nvim.g.neovide_transparency=0.95
nvim.g.neovide_hide_mouse_when_typing = true
nvim.g.neovide_input_use_logo = true
nvim.g.neovide_remember_window_size = true

-- NEOVIDE KEYMAPS & FUNCTIONS
local function neovideScale(amount)
    local temp = nvim.g.neovide_scale_factor + amount

    if temp < 0.5 then
        return
    end

    nvim.g.neovide_scale_factor = temp
end

map("n", "<C-=>", function()
	neovideScale(0.1)
    nvim.notify("Neovide Scale Factor: " .. nvim.g.neovide_scale_factor, nvim.log.levels.INFO, { title = "Neovide" })
end,
{ desc = "Neovide Scale Factor Increase" })

map("n", "<C-->", function()
	neovideScale(-0.1)
    nvim.notify("Neovide Scale Factor: " .. nvim.g.neovide_scale_factor, nvim.log.levels.INFO, { title = "Neovide" })
end,
{ desc = "Neovide Scale Factor Decrease" })

neovideScale(-0.3)
