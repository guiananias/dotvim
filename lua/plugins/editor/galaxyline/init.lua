local gl = require 'galaxyline'
local gl_section = gl.section

local COLORS = {
  bg = '#292D38',
  yellow = '#DCDCAA',
  dark_yellow = '#D7BA7D',
  cyan = '#4EC9B0',
  green = '#608B4E',
  light_green = '#B5CEA8',
  string_orange = '#CE9178',
  orange = '#FF8800',
  purple = '#C586C0',
  magenta = '#D16D9E',
  grey = '#858585',
  blue = '#569CD6',
  vivid_blue = '#4FC1FF',
  light_blue = '#9CDCFE',
  red = '#D16969',
  error_red = '#F44747',
  info_yellow = '#FFCC66',
  transparent = '#0000'
}

gl.short_line_list = { 'NvimTree', 'packer' }

gl_section.left[1] = {
  ViMode = {
    provider = function()
      local mode_color = {
        n = COLORS.blue,
        i = COLORS.green,
        v = COLORS.purple,
        [''] = COLORS.purple,
        V = COLORS.purple,
        c = COLORS.magenta,
        no = COLORS.blue,
        s = COLORS.orange,
        S = COLORS.orange,
        ic = COLORS.yellow,
        R = COLORS.red,
        Rv = COLORS.red,
        cv = COLORS.blue,
        ce = COLORS.blue,
        r = COLORS.cyan,
        rm = COLORS.cyan,
        ['r?'] = COLORS.cyan,
        ['!'] = COLORS.blue,
        t = COLORS.blue
      }

      vim.api.nvim_command('hi GalaxyViMode guifg=' .. mode_color[vim.fn.mode()])
      return '▊ '
    end,
    highlight = { COLORS.red, COLORS.transparent }
  }
}

