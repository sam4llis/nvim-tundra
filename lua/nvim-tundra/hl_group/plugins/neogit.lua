local M = {}

M.map = function(ss, opts)
  return {
    -- Status buffer.
    NeogitBranch = { link = 'Function' },
    NeogitRemote = { link = 'Function' },
    NeogitUnmergedInto = { link = 'Function' },
    NeogitUnpulledFrom = { link = 'Function' },
    NeogitObjectId = { fg = ss.syntax.number },
    NeogitStash = { link = 'NeogitObjectId' },
    NeogitFold = { link = 'Comment' },

    -- Status buffer items - git status.
    -- NeogitChangeModified = {},
    -- NeogitChangeAdded = {},
    -- NeogitChangeDeleted = {},
    -- NeogitChangeRenamed = {},
    -- NeogitChangeUpdated = {},
    -- NeogitChangeCopied = {},
    -- NeogitChangeBothModified = {},
    -- NeogitChangeNewFile = {},

    -- Status buffer section header.
    NeogitUntrackedfiles = { link = 'PreProc' },
    NeogitUnstagedchanges = { link = 'PreProc' },
    NeogitUnmergedchanges = { link = 'PreProc' },
    NeogitUnpulledchanges = { link = 'PreProc' },
    NeogitRecentcommits = { link = 'PreProc' },
    NeogitStagedchanges = { link = 'PreProc' },
    NeogitStashes = { link = 'PreProc' },
    NeogitRebasing = { link = 'PreProc' },

    -- Signs (line highlights).
    NeogitHunkHeader = { link = 'diffLine' },
    NeogitHunkHeaderHighlight = { link = 'NeogitHunkHeader' },
    -- NeogitDiffContext = {},
    NeogitDiffContextHighlight = { bg = ss.cp.gray._875 },
    NeogitDiffAdd = { fg = ss.cp.green._500, bg = ss.diff.add },
    NeogitDiffAddHighlight = { link = 'NeogitDiffAdd' },
    NeogitDiffDelete = { fg = ss.git.removed, bg = ss.diff.delete.bg },
    NeogitDiffDeleteHighlight = { link = 'NeogitDiffDelete' },
    -- NeogitDiffHeader = {},
    -- NeogitDiffHeaderHighlight = {},
    -- NeogitRebaseDone = {},
    -- NeogitCursorLine = {},

    -- Commit buffer.
    -- NeogitFilePath = {},
    -- NeogitCommitViewHeader = {},

    -- Log view buffer.
    -- NeogitGraph = {},
    -- NeogitGraphBold = {},

    -- Popups.
    NeogitPopupSectionTitle = { link = 'Function' },
    NeogitPopupBranchName = { link = 'PreProc' },
    -- NeogitPopupBold = {},
    NeogitPopupSwitchKey = { link = 'Number' },
    NeogitPopupOptionKey = { link = 'Number' },
    NeogitPopupConfigKey = { link = 'Number' },
    NeogitPopupActionKey = { link = 'Number' },
    NeogitPopupSwitchDisabled = { link = 'Comment' },
    -- NeogitPopupOptionsDisabled = {},
    -- NeogitPopupConfigDisabled = {},
    -- NeogitPopupActionDisabled = {},
    -- NeogitPopupSwitchEnabled = {},
    -- NeogitPopupOptionsEnabled = {},
    -- NeogitPopupConfigEnabled = {},
    -- NeogitPopupActionEnabled = {},

    -- Notifications.
    NeogitNotificationInfo = { link = 'DiagnosticInfo' },
    NeogitNotificationWarning = { link = 'DiagnosticWarn' },
    NeogitNotificationError = { link = 'DiagnosticError' },

    -- Command history view.
    -- NeogitCommandText = {},
    -- NeogitCommandTime = {},
    -- NeogitCommandCodeNormal = {},
    -- NeogitCommandCodeError = {},
  }
end

return M
