local cp = {

  white = '#FFFFFF',
  transparent = 'NONE',

  gray = {
    _50 = '#E4E4E4',
    _100 = '#F3F4F6',
    _200 = '#E5E7EB',
    _300 = '#D1D5DB',
    _400 = '#A8A8A8',
    _500 = '#767676',
    _600 = '#545454',
    _700 = '#444444',
    _750 = '#343434',
    _800 = '#242424',
    _875 = '#212121',
    _900 = '#1C1C1C',
    _925 = '#1A1A1A',
    _950 = '#181818',
    _1000 = '#141414',
  },

  marble = {
    _500 = '#E4E4EC'
  },

  orange = {
    _500 = '#F5CFA9',
  },

  red = {
    _400 = '#FFD7D7',
    _500 = '#FFAFAF',
    _800 = '#362836',
    _900 = '#291F2A',
  },

  indigo = {
    _400 = '#D7D7FF',
    _500 = '#B5B5FF',
    _800 = '#303353',
    _900 = '#1C2237',
  },

  green = {
    _500 = '#AFD7AF',
    _600 = '#87AF87',
    _900 = '#16252C',
  },

  sky = {
    _500 = '#ACD5FC',
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
