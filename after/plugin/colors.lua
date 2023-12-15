function ColorStuff(color)
	color = color or "nightfox"
	vim.cmd.colorscheme("nightfox")

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) 
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) 

end

ColorStuff()
