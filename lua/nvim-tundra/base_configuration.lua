local base_configuration = {
	transparent_background = false,
	dim_inactive_windows = {
		enabled = false,
		color = nil,
	},
	editor = {
		search = {},
		substitute = {},
	},
	syntax = {
		booleans = {},
		comments = {},
		conditionals = {},
		constants = {},
		fields = {},
		functions = {},
		keywords = {},
		loops = {},
		numbers = {},
		operators = {},
		punctuation = {},
		strings = {},
		types = {},
	},
	diagnostics = {
		errors = {},
		warnings = {},
		information = {},
		hints = {},
	},
	plugins = {
		lsp = true,
		treesitter = true,
		nvimtree = true,
		cmp = false,
		context = false,
		dbui = false,
		gitsigns = false,
		telescope = false,
	},
	overwrite = {
		colors = {},
		highlights = {},
	},
}

return base_configuration
