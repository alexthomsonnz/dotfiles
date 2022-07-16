if !exists('g:loaded_telescope') | finish | endif

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup {
  defaults = {
    color_devicons = true,
    prompt_prefix = " >",
    mappings = {
      n = {
        ["q"] = actions.close
        },
      },
    file_ignore_patterns = { "node_modules" }
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },

}

require('telescope').load_extension('fzy_native')

