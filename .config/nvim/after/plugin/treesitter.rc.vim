if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "typescript",
    "javascript",
    "markdown",
    "toml",
    "fish",
    "json",
    "yaml",
    "swift",
    "html",
    "scss",
    "python",
    "rust",
    "c_sharp",
    "dockerfile",
    "make",
    "regex",
  },
  auto_install = true,
}

