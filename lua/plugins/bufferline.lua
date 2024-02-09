local bufferline = require('bufferline')
bufferline.setup {
    options = {
        buffer_close_icon = '',
        mode = 'buffers',
        offsets = {
            {
                filetype = 'neo-tree',
                text = 'File Explorer',
                seporator = true,
                padding = 1
            }
        },
        diagnostics = 'nvim_lsp',
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            stype = 'icon'
        },
        seporator_style = 'slope',
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
    }
}
