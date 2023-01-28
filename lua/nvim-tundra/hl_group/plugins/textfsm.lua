local M = {}

M.map = function(ss, opts)
  return {
    textfsmValue = { fg = ss.syntax.keyword },
    -- textfsmState = {},
    -- textfsmNext = {},

    -- textfsmAction = {},
    -- textfsmOption = {},

    textfsmVar = { fg = ss.syntax.variable },
    textfsmRuleVar = { fg = ss.syntax.constant },

    -- textfsmComment = {},
    -- textfsmStateComment = {},
    textfsmArrow = { fg = ss.syntax.conditional },

    textfsmRule = { fg = ss.syntax.variable },
    -- textfsmRegex = {},
    textfsmErrMsg = { fg = ss.syntax.conditional },
  }
end

return M
