local cp = {

  white = '#FFFFFF',
  transparent = 'NONE',

  gray = {
    _50 = '#F9FAFB',
    _100 = '#F3F4F6',
    _200 = '#E5E7EB',
    _300 = '#D1D5DB',
    _400 = '#9CA3AF',
    _500 = '#6B7280',
    _600 = '#4B5563',
    _700 = '#374151',
    _750 = '#334155',
    _800 = '#1F2937',
    _875 = '#151D2B',
    _900 = '#111827',
    _925 = '#111726',
    _950 = '#101624',
    _1000 = '#0E1420',
  },

  orange = {
    _500 = '#FBC19D',
  },

  red = {
    _400 = '#FECDD3', -- NOTE: Alias rose._200.
    _500 = '#FCA5A5',
    _600 = '#BF7471',
    _800 = '#4C384C',
    _900 = '#3B2C3C',
  },

  indigo = {
    _400 = '#DDD6FE', -- NOTE: Alias violet._200.
    _500 = '#A5B4FC',
    _800 = '#424674',
    _900 = '#28304D',
  },

  green = {
    _500 = '#B5E8B0',
    _600 = '#98BC99',
    _900 = '#1F343D',
  },

  sky = {
    _500 = '#BAE6FD',
  },

  opal = {
    _500 = '#99BBBD',
  },

  sand = {
    _500 = '#E8D4B0',
  },

}

-- Overwrite `cp` with any user configuration colours.
local overwrite = vim.tbl_get(vim.g.tundra_opts or {}, 'overwrite', 'colors') or {}
return vim.tbl_deep_extend('force', cp, overwrite)
