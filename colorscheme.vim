au ColorScheme * hi Normal ctermfg=none guibg=none
" 括弧対応
au ColorScheme * hi MatchParen cterm=bold ctermfg=214 ctermbg=black
" スペルチェック
au Colorscheme * hi SpellBad ctermfg=23 cterm=none ctermbg=none

if (has("termguicolors"))
  set termguicolors
endif

let g:gruvbox_underline=1
let g:gruvbox_undercurl=1
let g:gruvbox_bold=1
let g:gruvbox_transparent_bg=1

set termguicolors
set bg=dark

colorscheme gruvbox

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

if g:colors_name == 'ayu'
  let ayucolor='dark'
endif

if g:colors_name == 'onedark'
  let g:lightline = { 'colorscheme': 'onedark' }
endif

if g:colors_name == 'gruvbox'
  set t_Co=256
  let g:lightline = { 'colorscheme': 'gruvbox' }
endif


