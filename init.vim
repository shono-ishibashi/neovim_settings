let g:python_host_prog = '~/.asdf/shims/python2'
let g:python3_host_prog = '~/.asdf/shims/python3'

runtime! plugins/dein.rc.vim
runtime! keymap.vim
runtime! colorscheme.vim

syntax enable
set number
set title
set cursorline
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set softtabstop=2
set clipboard=unnamedplus
set nobackup
set nowritebackup

set pumblend=30

autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
let g:python_indent = '    '
let g:python_style = 'google'

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'

"init.vim
"フォーカスしていない時の背景色(23を好きな値・色に変更)
let g:InactiveBackGround = 'ctermbg=23'

"Neovim内でフォーカスしていないペインの背景色設定
execute ('hi NormalNC '.g:InactiveBackGround)
execute ('hi NontextNC '.g:InactiveBackGround)
execute ('hi SpecialkeyNC '.g:InactiveBackGround)
execute ('hi EndOfBufferNC '.g:InactiveBackGround)

"Neovim自体からフォーカスを外したりした際の切替設定
"(フォーカスした時の設定はcolorschemeに合わせて変更）
augroup ChangeBackGround
autocmd!
" フォーカスした時(colorscheme準拠に切替)
autocmd FocusGained * hi Normal ctermbg=234 " :hi Normalで取得した値
autocmd FocusGained * hi NonText ctermbg=234 " :hi NonTextで取得した値
autocmd FocusGained * hi SpecialKey ctermbg=234 " :hi SpecialKeyで取得した値
autocmd FocusGained * hi EndOfBuffer ctermbg=none " EndOfBufferの設定は恐らくclearなのでnoneを入れる
" フォーカスを外した時（フォーカスしていない時の背景色に切替)
autocmd FocusLost * execute('hi Normal '.g:InactiveBackGround)
autocmd FocusLost * execute('hi NonText '.g:InactiveBackGround)
autocmd FocusLost * execute('hi SpecialKey '.g:InactiveBackGround)
autocmd FocusLost * execute('hi EndOfBuffer '.g:InactiveBackGround)
augroup end

let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1
