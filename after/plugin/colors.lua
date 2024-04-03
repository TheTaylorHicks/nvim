function ColorMyPencils(color)
	color = color or 'github_dark_default'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

ColorMyPencils()

-- vim.cmd.colorscheme("github_dark_default")

