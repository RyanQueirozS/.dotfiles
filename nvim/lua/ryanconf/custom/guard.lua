local ft = require('guard.filetype')

ft('c,cpp,h,hpp'):fmt('clang-format')


ft('go'):fmt('gofmt')
    :append('golines')

ft('lua'):fmt('lsp')
    :append('stylua')
    :lint('selene')

require('guard').setup({
  fmt_on_save = true,
  lsp_as_default_formatter = false,
})
