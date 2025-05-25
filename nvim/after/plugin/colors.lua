
vim.o.background = "dark"
vim.g.transparent_enabled = true

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
end

-- vim.cmd [[
--   hi Normal guibg=NONE ctermbg=NONE
--   hi NormalNC guibg=NONE ctermbg=NONE
--   hi EndOfBuffer guibg=NONE ctermbg=NONE
--   hi LineNr guibg=NONE ctermbg=NONE
--   hi SignColumn guibg=NONE ctermbg=NONE
-- ]]

ColorMyPencils()
