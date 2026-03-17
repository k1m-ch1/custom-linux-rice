-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "x", '"_x', { desc = "Delete without yanking" })
vim.api.nvim_create_user_command("Lorem", function(opts)
  local n = opts.args ~= "" and opts.args or "1"
  vim.cmd("read !curl -s https://lorem-api.com/api/lorem?paragraphs=" .. n)
end, { nargs = "?" })
