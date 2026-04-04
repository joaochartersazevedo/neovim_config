-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Open file under cursor in a vertical split (override default gf behavior)
map("n", "gf", function()
  local filepath = vim.fn.expand("<cfile>")
  vim.cmd("vsplit " .. filepath)
end, { desc = "Open file under cursor in vertical split" })
