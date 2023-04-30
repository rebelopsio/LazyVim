" catdracula.vim
" A color scheme that combines the Catppuccino and Dracula themes for Neovim.

" Set colors
let s:bg0_hard = "#1e1f29"
let s:bg0 = "#282a36"
let s:bg1 = "#44475a"
let s:bg2 = "#4f5471"
let s:bg3 = "#5c617a"
let s:bg4 = "#44475a"
let s:bg5 = "#f8f8f2"
let s:bg6 = "#f1fa8c"
let s:bg7 = "#bd93f9"
let s:bg8 = "#ff79c6"
let s:bg9 = "#8be9fd"
let s:bg10 = "#50fa7b"

let s:fg0 = "#f8f8f2"
let s:fg1 = "#f1fa8c"
let s:fg2 = "#bd93f9"
let s:fg3 = "#ff79c6"
let s:fg4 = "#8be9fd"
let s:fg5 = "#50fa7b"
let s:fg6 = "#ff5555"

" Define colors
hi clear

" Syntax highlighting
syntax on
hi Comment guifg=#6272a4
hi Constant guifg=#ffb86c
hi Identifier guifg=#8be9fd
hi Statement guifg=#ff79c6
hi PreProc guifg=#ff79c6
hi Type guifg=#8be9fd
hi Special guifg=#bd93f9
hi Error guifg=#ff5555
hi Warning guifg=#ffb86c

" General
hi Normal guibg=s:bg0 guifg=s:fg0
hi LineNr guibg=s:bg0 guifg=s:fg1
hi CursorLineNr guibg=s:bg1 guifg=s:fg0
hi VertSplit guibg=s:bg0 guifg=s:fg1
hi SignColumn guibg=s:bg0 guifg=s:fg1
hi CursorLine guibg=s:bg1
hi Visual guibg=s:bg2 guifg=s:fg0

" Status line
hi StatusLine guibg=s:bg1 guifg=s:fg0
hi StatusLineNC guibg=s:bg0 guifg=s:fg1
hi TabLineFill guibg=s:bg1 guifg=s:fg0
hi TabLineSel guibg=s:bg2 guifg=s:fg0

" Search
hi Search guibg=s:bg3 guifg=s:fg0

" Completion
hi Pmenu guibg=s:bg1 guifg=s:fg0
hi PmenuSel guibg=s:bg2 guifg=s:fg0
hi PmenuSbar guibg=s:bg1 guifg=s:fg0
hi PmenuThumb guibg=s:bg3 guifg=s:fg0

" Diff
hi DiffAdd guibg=s:bg4 guifg=s:fg5
hi DiffDelete guibg=s:bg6 guifg=s:fg3
hi DiffChange guibg=s:bg2 guifg=s:fg0

" Git
hi gitcommitComment guifg=#6272a4
hi gitcommitUntracked guifg=#ffb86c
hi gitcommitDiscarded guifg=#ff555
