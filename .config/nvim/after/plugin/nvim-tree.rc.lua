local status, nvimtree = pcall(require, "nvim-tree")
if (not status) then return end

vim.cmd("hi NvimTreeFolderIcon guifg = #61afef")
vim.cmd("hi NvimTreeFolderName guifg = #61afef")
vim.cmd("hi NvimTreeIndentMarker guifg=#545862")

vim.o.termguicolors = true

nvimtree.setup {
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = true,
    ignore_ft_on_setup  = {},
    open_on_tab         = false,
    hijack_cursor       = false,
    update_cwd          = false,
    filters             = {
        dotfiles = false,
    },
    diagnostics         = {
        enable = false,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        }
    },
    update_focused_file = {
        enable      = false,
        update_cwd  = false,
        ignore_list = {}
    },
    system_open         = {
        cmd  = nil,
        args = {}
    },
    view                = {
        width = 30,
        side = 'left',
        mappings = {
            custom_only = false,
            list = {}
        }
    },
    renderer            = {
        indent_markers = {
            enable = true
        }
    },
}
