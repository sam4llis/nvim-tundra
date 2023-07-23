local M = {}

M.map = function(ss, opts)
  return {
    -- Status buffer.
    -- NeogitBranch = {},
    -- NeogitRemote = {},
    -- NeogitUnmergedInto = {},
    -- NeogitUnpulledFrom = {},
    -- NeogitObjectId = {},
    -- NeogitStash = {},
    -- NeogitFold = {},

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
    -- NeogitUntrackedfiles = {},
    -- NeogitUnstagedchanges = {},
    -- NeogitUnmergedchanges = {},
    -- NeogitUnpulledchanges = {},
    -- NeogitRecentcommits = {},
    -- NeogitStagedchanges = {},
    -- NeogitStashes = {},
    -- NeogitRebasing = {},

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
    -- NeogitPopupSectionTitle = {},
    -- NeogitPopupBranchName = {},
    -- NeogitPopupBold = {},
    -- NeogitPopupSwitchKey = {},
    -- NeogitPopupOptionsKey = {},
    -- NeogitPopupConfigKey = {},
    -- NeogitPopupActionKey = {},
    -- NeogitPopupSwitchDisabled = {},
    -- NeogitPopupOptionsDisabled = {},
    -- NeogitPopupConfigDisabled = {},
    -- NeogitPopupActionDisabled = {},
    -- NeogitPopupSwitchEnabled = {},
    -- NeogitPopupOptionsEnabled = {},
    -- NeogitPopupConfigEnabled = {},
    -- NeogitPopupActionEnabled = {},

    -- Notifications.
    -- NeogitNotificationInfo = {},
    -- NeogitNotificationWarning = {},
    -- NeogitNotificationError = {},

    -- Command history view.
    -- NeogitCommandText = {},
    -- NeogitCommandTime = {},
    -- NeogitCommandCodeNormal = {},
    -- NeogitCommandCodeError = {},
  }
end

return M
