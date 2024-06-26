vim.g.mapleader = " "

-- open parent directory in windr
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- allows movement of visual blocks with dynamic indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- better cursor positioning
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keeps original register contents
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- maps ctrl+c to esc to save changes on ctrl+c in vertical insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- unbinds Ex mode (shift+Q)
vim.keymap.set("n", "Q", "<nop>")

-- if using tmux, allows quick switching between sessions
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format the current file with LSP formatter
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- QuickFix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- quickly regex replace the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- makes the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- sources the current file (for fast troubleshooting of vim config)
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
