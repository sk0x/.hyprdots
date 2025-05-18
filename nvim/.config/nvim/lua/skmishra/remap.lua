-- remaping leader key
vim.g.mapleader = " "
-- remap to open current dir explorer in editor
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- keys to move selected text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move the below life onto the current line
vim.keymap.set("n", "J", "mzJ`z")

-- moving the cursor line in the center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- key to restart lang. server protocol
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- vim with me (theprimeagen) plugin remap
vim.keymap.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end)

-- paste the buffer and keep it in the buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy the selected text to the system keyboard
vim.keymap.set({"n","v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
-- use ctrl+c as esc
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- open tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- lsp request to current file language server
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n","<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n","<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true})

vim.keymap.set(
	"n",
	"<leader>ee",
	"oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- open remaps file in nvim shortcut
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/skmishra/remap.lua<CR>");

-- rain all the characters
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- lsp configuration


--
--
