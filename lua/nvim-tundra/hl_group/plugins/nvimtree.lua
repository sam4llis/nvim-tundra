local M = {}

M.map = function(ss, opts)
	return {
		NvimTreeFolderName = { fg = ss.filetree.folder.name },
		NvimTreeFolderIcon = { fg = ss.filetree.folder.icon },
		NvimTreeNormal = { fg = ss.filetree.filename.normal, bg = ss.filetree.bg },
		NvimTreeOpenedFolderName = { fg = ss.filetree.folder.open },
		NvimTreeEmptyFolderName = { fg = ss.filetree.folder.empty },
		NvimTreeIndentMarker = { fg = ss.filetree.caret },
		NvimTreeVertSplit = ss.filetree.border,
		NvimTreeRootFolder = { fg = ss.filetree.root },
		NvimTreeSymlink = { fg = ss.filetree.symlink },
		NvimTreeGitDirty = { fg = ss.git.changed },
		NvimTreeGitNew = { fg = ss.git.added },
		NvimTreeGitDeleted = { fg = ss.git.removed },
		NvimTreeFileIgnored = { fg = ss.filetree.ignored },
	}
end

return M
