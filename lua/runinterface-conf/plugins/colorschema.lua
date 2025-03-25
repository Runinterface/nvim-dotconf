return {
	{
  		"folke/tokyonight.nvim",
  		lazy = false,
  		priority = 1000,
		config = function()
			require("tokyonight").setup({
  				style = "moon",
  				light_style = "day", 
  				transparent = true,
  				terminal_colors = true,
  				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
					sidebars = "transparent",
					floats = "transparent",
	  			},
  				sidebars = { "qf", "help" },
  				day_brightness = 0.3,
  				hide_inactive_statusline = false,
  				dim_inactive = false,
  				lualine_bold = false,
  				on_colors = function(colors) end,
  				on_highlights = function(highlights, colors)
					-- do nothing
				end,
			})
			vim.cmd.colorscheme("dogrun")
		end
	},
}
