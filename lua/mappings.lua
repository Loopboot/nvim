require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
map(
  "n",
  "<leader>of",
  "<cmd>Telescope workspaces<cr>",
  { desc = "Open workspace" }
)
map(
  "n",
  "<leader>oa",
  "<cmd>WorkspacesAdd<cr>",
  { desc = "Add cwd to workspace" }
)
map(
  "n",
  "<leader>or",
  "<cmd>WorkspacesRemove<cr>",
  { desc = "Remove workspace" }
)
map(
  "n",
  "<leader>ov",
  "<cmd>VenvSelect<cr>",
  { desc = "Select Virtual env" }
)

map({ "n", "x", "o" }, "<leader>ss", function()
  require("flash").jump()
end, { desc = "Flash jump" })

map({ "i" }, "<C-f>", function()
  require("flash").jump()
end)

map({ "n", "x", "o" }, "<leader>sd", function()
  require("flash").jump()
end, { desc = "Flash Treesitter" })
