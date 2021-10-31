set ttyfast
syntax on
set nocompatible
set magic
filetype plugin on
filetype indent on
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set omnifunc=syntaxcomplete#Complete

"	JAVA AUTOCOMPLETE	"
if has("autocmd")
  autocmd Filetype java setlocal omnifunc=javacomplete#Complete
  autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
endif

" Graphical Interface "
set termguicolors
set t_Co=256
set background=dark
set title
set number
set relativenumber
set numberwidth=1
set cursorline
"set guicursor=a:blink0 "ENABLE CURSOR BLINK
set mouse=a
set clipboard+=unnamedplus
set showcmd
set showmode
set ruler
set showmatch
set showtabline=2
set laststatus=2
"	BETTER AUTOCOMPLETE		"
set completeopt=menu,menuone,noselect,noinsert
"EndOfBuffer ctermbg=<your bg color>

" Fix BackSpace indent
set backspace=indent,eol,start

"" HIGHLITHING
set syntax=css
set syntax=html
set syntax=php
""highlight link htmlTag htmlTagName
""highlight link htmlEndTag htmlTagName

" Identation TABS "
filetype plugin indent on
set copyindent
set autoindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set shiftround
""	RECOMMENT SECTION""
""set list listchars=tab:\|-\,nbsp:␣,trail:•
""set fillchars+=vert:│
""let g:indent_guides_enable_on_vim_startup=1
""let g:indent_guides_auto_colors=0
""let g:indent_guides_guide_size=1
""let g:indent_guides_start_level=2
""let g:indent_guides_indent_leves=3
""set list lcs=tab:\|\ "
""set sw=4
""let g:indentLine_enabled=1
""let g:indentLine_char_list=['|', '¦', '┆', '┊']
""let g:indentLine_char = '|'
""let g:indentLine_setColors=0
"

"" Vim
"let g:indentLine_color_term = 239
"
"" GVim
"let g:indentLine_color_gui = '#A4E57E'
"
"" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)
"
"" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'

" SET SPLITS ORIENTATION
set fillchars+=vert:│ " use a better vertsplit char
set splitbelow " Horizontal splits will automatically be below
set splitright " Vertical splits will automatically be below

" Set Default SEARCH HIGHLIGHTING"
set hlsearch
set incsearch
"	NO REMEBER SEARCH	"
set nohlsearch

" AUTOCOMPLETE { }, [ ], ( ) "
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap /* /**/<Esc>i
inoremap /*<CR> /*<CR>*/<Esc>O

" PLUGINS "
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'								" Set AIRLINE barline
Plug 'vim-airline/vim-airline-themes'						" Set AIRLINE THEMES to barline
Plug 'terryma/vim-multiple-cursors'							" Enable MULTIPLE CURSORS
Plug 'mattn/emmet-vim'										" EMMET HTML5 & CSS3 Plugin
Plug 'tpope/vim-surround'									" Vim
Plug 'chuling/equinusocio-material.vim'						" EQUINUSOCIO-MATERIAL THEME
Plug 'kaicataldo/material.vim', { 'branch': 'main' }		" MATERIAL THEME
Plug 'joshdick/onedark.vim'									" ONEDARK THEME
Plug 'dracula/vim', { 'as': 'dracula' }						" DRACULA THEME
Plug 'uiiaoo/java-syntax.vim'								" JAVA SYNTAX HIGHLIGHT
Plug 'sainnhe/sonokai'										" SONOKAI THEME
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }		" SPACEDUCK THEME
Plug 'arzg/vim-colors-xcode'								" Vim-Color-XCODE
call plug#end()

"" EMMET Plugin ENABLED only with FileType HTML, CSS & PHP"
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall

"" EMMET Plugin MapLeader Key "
let g:user_emmet_leader_key=',' "CHANGE EMMET KEY LEADER TO ,
let g:user_emmet_expandabbr_key=',,'


"""""	*************	MATERIAL EQUINUS THEME	************	"
""set termguicolors
""""use a different style
""""valid values: 'default' (default), 'darker', 'pure'
""let g:equinusocio_material_style = 'pure'
""
""""" less bright
""""" which means some colors will be modified by this formula:
""""" (r, g, b) -> ( max(r - less, 0), max(g - less, 0), max(b - less, 0) )
""let g:equinusocio_material_less = 0
""""
""""" make vertsplit invisible (visible by default) (default 0)
""""" if style == 'pure', then the vertsplit is always visible
""let g:equinusocio_material_hide_vertsplit = 1
""""
""""" parentheses improved (default 0)
""""" enabling this option with 'luochen1990/rainbow' installed is not encouraged
""""" because this option and 'luochen1990/rainbow' will registry conflicting events
""""" in summary:
""""" 1. no 'luochen1990/rainbow' installed, no parentheses improved: nothing to do (default 0)
""""" 2. no 'luochen1990/rainbow' installed, want built-in parentheses improved: set to 1
""""" 3. 'luochen1990/rainbow' installed: nothing to do (default 0)
""let g:equinusocio_material_bracket_improved = 1
""""" use a better vertsplit char
""set fillchars+=vert:│
""colorscheme equinusocio_material
""
""""this theme has a buildin lightline/airline theme
""let g:airline_theme = 'equinusocio_material'
""""let g:lightline = {
""""\ 'colorscheme': 'equinusocio_material',
""""\ }
""""
""""" AIRLINE SETTINGS
""let g:airline#extensions#tabline#enabled = 1  " Set TABLINE ENABLE in TOP
""let g:airline_powerline_fonts=1
""let g:airline#extensions#branch#enabled = 1
""let g:airline#extensions#tabline#enabled = 1
""let g:airline#extensions#tagbar#enabled = 1
""let g:airline#extensions#syntastic#enabled = 1
""let g:airline_skip_empty_sections = 1

""	MATERIAL COLORSCHEME	"
""if (has('termguicolors'))
""  set termguicolors
""endif
"""" OPCIONES DE TEMA
""""let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
""let g:material_terminal_italics = 1
""let g:material_theme_style = 'ocean'
""let g:airline_theme = 'material'
""set termguicolors
""let g:airline_powerline_fonts=1
""let g:airline#extensions#tabline#enabled = 1  " Set TABLINE ENABLE in TOP
""let g:airline#extensions#branch#enabled = 1
""let g:airline#extensions#tabline#enabled = 1
""let g:airline#extensions#tagbar#enabled = 1
""let g:airline#extensions#syntastic#enabled = 1
""let g:airline_skip_empty_sections = 1

""let g:material_less = 0
""colorscheme material


""		THEME ONEDARK
""colorscheme onedark
""let g:material_less = 0
""let g:airline_theme='onedark'
""let g:onedark_enable_italic = 1
""let g:airline#extensions#tabline#enabled = 1  " Set TABLINE ENABLE in TOP
""let g:airline_powerline_fonts=1

""		THEME DRACULA
""colorscheme dracula
""let g:dracula_italic = 1
""let g:dracula_less = 0
""let g:airline_theme='dracula'
""let g:dracula_enable_italic = 1
""let g:airline#extensions#tabline#enabled = 1  " Set TABLINE ENABLE in TOP
""let g:airline_powerline_fonts=1
""let g:airline#extensions#branch#enabled = 1
""let g:airline#extensions#tabline#enabled = 1
""let g:airline#extensions#tagbar#enabled = 1
""let g:airline#extensions#syntastic#enabled = 1
""let g:airline_skip_empty_sections = 1
""hi Normal ctermbg=Black ctermfg=White guifg=White guibg=Black
""let java_highlight_functions=1
""let g:java_highlight_all=1

""""""		SONOKAI THEME
""if has('termguicolors')
""	set termguicolors
""endif
"""""" Available values: `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`, `'espresso'`
""let g:sonokai_style = 'andromeda'
""let g:sonokai_enable_italic = 1
""let g:sonokai_disable_italic_comment = 1
""let g:sonokai_cursor = 'auto'
""let g:sonokai_menu_selection_background = 'auto'
""let g:sonokai_show_eob = 1
""let g:sonokai_diagnostic_text_highlight = 1
""let g:sonokai_diagnostic_line_highlight = 1
""let g:sonokai_diagnostic_virtual_text = 'colored'
""let g:sonokai_current_word = 'bold'
""let g:sonokai_better_performance = 0
""let g:sonokai_lightline_disable_bold = 1
""let g:airline#extensions#tabline#enabled = 1  " Set TABLINE ENABLE in TOP
""let g:airline_powerline_fonts=1
""let g:airline#extensions#branch#enabled = 1
""let g:airline#extensions#tabline#enabled = 1
""let g:airline#extensions#tagbar#enabled = 1
""let g:airline#extensions#syntastic#enabled = 1
""let g:airline_skip_empty_sections = 1
""
""colorscheme sonokai
""let g:airline_theme = 'sonokai'

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

colorscheme spaceduck

let g:spaceduck_enable_italic = 1
let g:spaceduck_disable_italic_comment = 1
let g:spaceduck_cursor = 'auto'
let g:spaceduck_menu_selection_background = 'auto'
let g:spaceduck_show_eob = 1
let g:spaceduck_diagnostic_text_highlight = 1
let g:spaceduck_diagnostic_line_highlight = 1
let g:spaceduck_diagnostic_virtual_text = 'colored'
let g:spaceduck_current_word = 'bold'
let g:spaceduck_better_performance = 1
let g:spaceduck_lightline_disable_bold = 1
let g:airline_theme = 'spaceduck'
let g:airline#extensions#tabline#enabled = 1  " Set TABLINE ENABLE in TOP
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline_skip_empty_sections = 1

syntax on
