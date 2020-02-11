syntax on 
set noswapfile
set nocompatible 
filetype off 
filetype indent on 
filetype plugin on 
filetype plugin indent on 
set mouse =a 
set encoding =utf-8 
let &t_ut='' 
set expandtab
set tabstop =4 
set shiftwidth =4 
set softtabstop =4 
set scrolloff=10 
set tw=0
set ai! "Auto indent  
set cindent 
set ruler 
set indentexpr= 
set foldmethod=indent 
set foldlevel=99 
set laststatus=2 
set autochdir 
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal!g'\"" | endif 
set guifont=Source_Code_Pro:h12 
set guioptions-=m 
set guioptions-=T 
set fileencodings=utf-8,chinese,latin-1

let mapleader=" "
set number 
set cursorline 
set backspace=indent,eol,start 
set wrap 
set showcmd
set wildmenu 
set hlsearch 
set incsearch 
exec "nohlsearch" 
set ignorecase 
set smartcase 
set cursorcolumn
" 基于缩进或语法进行代码折叠
set foldmethod=indent
" set foldmethod=syntax 启动 vim 时关闭折叠代码
set nofoldenable 
set showmatch  
set shortmess=atI 
set undofile 
set undodir =~/.vim/undodir
au InsertLeave *.go write











mapclear

map Q :q<CR>
map S :w<CR>

noremap j h
noremap k j
noremap i k

noremap a i
noremap A a

noremap o I
noremap O A

nnoremap J 0
nnoremap K 5j
nnoremap I 5k
nnoremap L $

noremap Y p

noremap = nzz 
noremap - Nzz

"inoremap ∆ <left>
"inoremap ¬ <right>
"inoremap ˆ <up>
"inoremap ˚ <down>

vnoremap I 5<Up>
vnoremap K 5<Down>
vnoremap L $
vnoremap J 0

" Ctrl + U or E will move up/down the view port without moving the cursor
nnoremap <C-U> 5<C-y>
nnoremap <C-E> 5<C-e>
"  cant work inoremap <C-U> <Esc>5<C-y>a
inoremap <C-E> <Esc>5<C-e>a

" move cursor to center of window
imap <C-c> <Esc>zza 
nmap <C-c> zz



" windows control 
noremap <LEADER>wnl :set splitright<CR>:vsplit<CR> 
noremap <LEADER>wni :set nosplitbelow<CR>:split<CR> 
noremap <LEADER>wnk :set splitbelow<CR>:split<CR>
noremap <LEADER>wnj :set nosplitright<CR>:vsplit<CR>

map <LEADER>wl <C-w>l 
map <LEADER>wj <C-w>h 
map <LEADER>wi <C-w>k 
map <LEADER>wk <C-w>j

map<LEADER>wrj :vertical resize-5<CR>	
map<LEADER>wrl :vertical resize+5<CR>
map<LEADER>wri :res +5<CR>	
map<LEADER>wrk :res -5<CR>	

 
map<LEADER>wv <C-w>t<C-w>H 
map<LEADER>wh <C-w>t<C-w>K

" tab control
"map<LEADER>tn :tabe<CR> 
"map<LEADER>tj :-tabnext<CR> 
"map<LEADER>tl :+tabnext<CR> 
"map<LEADER>td :tanc<CR> 
"map<LEADER>tL :tablast<CR> 
"map<LEADER>tJ :tabfirst<CR>

map<LEADER><CR> :nohlsearch<Cr>

" Spelling Check
"map <LEADER>sc :set spell!<CR> 
"noremap <C-x> ea<C-x>s 
"inoremap <C-x> <Esc>ea<C-x>s

"man" 启用:Man命令查看各类man信息
"source $VIMRUNTIME/ftplugin/man.vim
"" 定义:Man命令查看各类man信息的快捷键
"nmap <Leader>man :Man 3 <cword><CR>





"function! g:BuffetSetCustomColors()
    "hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#859900 guifg=#D3D3D3
    "hi! BuffetActiveBuffer cterm=NONE ctermbg=10 ctermfg=2 guibg=#00BFFF guifg=#D3D3D3
    "hi! BuffetBuffer cterm=NONE ctermbg=10 ctermfg=8 guibg=#676868 guifg=#DCDCDC
    "hi! BuffetTrunc cterm=bold ctermbg=11 ctermfg=8 guibg=#999999 guifg=#000000
    "hi! BuffetTab cterm=NONE ctermbg=4 ctermfg=8 guibg=#288BD3 guifg=#000000

"endfunction






set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=/usr/local/opt/fzf
call plug#begin('~/.vim/bundle')
"" pretty
"Plug 'VundleVim/Vundle.vim' 
Plug 'vim-airline/vim-airline' 
Plug 'connorholyday/vim-snazzy'
Plug 'dracula/vim'
Plug 'itchyny/vim-cursorword'
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'vim-airline/vim-airline-themes'
" Plugin 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
""Plugin 'fholgado/minibufexpl.vim'
Plug 'ryanoasis/vim-devicons'
"Plugin 'bagrat/vim-buffet'
Plug 'mhinz/vim-startify'
Plug 'altercation/vim-colors-solarized'

"Plug 'xolox/vim-session'
    
""
""
""
""
"""nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
""
"""tagbar
"Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
Plug 'majutsushi/tagbar'
""
""" Error checking
"Plugin 'w0rp/ale'
""
""" ycm
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plugin 'Valloric/YouCompleteMe'
""
""" Undo Tree
Plug 'mbbill/undotree'
""
""" git
" 左边栏显示git信息
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

""
" doxygen
"Plug 'vim-scripts/DoxygenToolkit.vim'
""
""" c++ highlight
"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'STL-improved'
""
""
""" others
Plug 'easymotion/vim-easymotion'
""
""
""
"""search
"Plug 'wsdjeg/FlyGrep.vim'
"Plug 'brooth/far.vim'
"Plug 'dyng/ctrlsf.vim' 
"Plug 'mileszs/ack.vim'
""Plugin 'ctrlpvim/ctrlp.vim'
" Fast file navigation
""Plugin 'wincent/Command-T'

""
"""edit
"Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
""Plugin 'derekwyatt/vim-protodef'
"Plug 'vim-scripts/h2cppx'
"Plug 'gcmt/wildfire.vim'
"Plug 'drmingdrmer/xptemplate'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'


Plug 'junegunn/fzf.vim'

" go 主要插件
"Plug 'fatih/vim-go', { 'tag': '*' }
" go 中的代码追踪，输入 gd 就可以自动跳转
Plug 'dgryski/vim-godef'

Plug 'junegunn/vim-easy-align'

"colorscheme
Plug 'junegunn/seoul256.vim' 
Plug 'yuttie/inkstained-vim'
Plug 'lifepillar/vim-solarized8'
Plug 'ayu-theme/ayu-vim'

"Plugin 'roxma/nvim-yarp'
"Plugin 'ncm2/ncm2'
"Plugin 'ncm2/ncm2-bufword'
"Plugin 'ncm2/ncm2-path'
"Plugin 'ncm2/ncm2-pyclang'


call plug#end()

"set background=dark
"colorscheme seoul256-light
let ayucolor="light"  " for light version of theme
"colorscheme ayu
"colorscheme snazzy
"
colorscheme dracula
"
" Compile function
map r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!clang++ -std=c++11 -stdlib=libc++ -Weverything % -o %<"
    exec "!./%<"
  elseif &filetype == 'cpp'
    exec "!clang++ -std=c++11 -stdlib=libc++ -Weverything % -o %<"
    exec "!./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    silent! exec "!clear"
    exec "!time python3 %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
  elseif &filetype == 'go'
        set splitbelow
		:sp
		:term go run %
  endif
endfunc

"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"let g:ncm2_pyclang#library_path = '/usr/local/Cellar/llvm/8.0.0_1/lib'


" enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect

" doxygen
let g:DoxygenToolkit_authorName="zhangjelly0405@gmail.com" 
" let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_compactOneLineDoc ="no"

" make it pretty
"colorscheme snazzy
"let g:SnazzyTransparent = 1
"colorscheme dracula

set termguicolors     " enable true colors support
let g:airline_theme='dracula'
"let g:airline_theme='ayu_light'
"set transparency=15





set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_symbols.notexists = ' ?'
  let g:airline_symbols.dirty='⚡'

" ===
" " === NERDTree
 " ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapActivateNode = "l"
let NERDTreeMapOpenVSplit = "L"
let NERDTreeMapJumpParent = "j"
let NERDTreeMapJumpRoot = "J"
let NERDTreeMenuDown = "k"
let NERDTreeMenuUp = "i"
let NERDTreeMapJumpPrevSibling = "<C-i>"
let NERDTreeMapJumpNextSibling = "<C-k>"

let NERDTreeMapOpenSplit = ""
let NERDTreeMapJumpFirstChild = "gg"
let NERDTreeMapJumpLastChild = "G"
let NERDTreeMapToggleHidden = "H"

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"autocmd VimEnter *  NERDTree
"autocmd VimEnter *
                "\   if !argc()
                "\ |   Startify
                "\ |   NERDTree
                ""\ |   wincmd w
                "\ | endif

let NERDTreeMinimalMenu=1
let NERDTreeCascadeOpenSingleChildDir=1
let NERDTreeCascadeSingleChildDir=1
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" ===
" === vim-indent-guide
" ===
"let g:indent_guides_guide_size = 1
"let g:indent_guides_start_level = 2
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_color_change_percent = 1



" autocmd VimEnter * silent NERDTree | wincmd p
" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
        \ "Staged"    : "✚",
            \ "Untracked" : "✭",
                \ "Renamed"   : "➜",
                    \ "Unmerged"  : "═",
                        \ "Deleted"   : "✖",
                            \ "Dirty"     : "✗",
                                \ "Clean"     : "✔︎",
                                    \ "Unknown"   : "?"
                                        \ }








"" ===
"" === coc
"" ===
" use <tab> for trigger completion and navigate to the next complete item
"
"
"
"自动修复import
"autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')


let g:go_def_mapping_enabled = 0

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
"" fix the most annoying bug that coc has
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
"let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-emmet', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-go']
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
    "let col = col('.') - 1
    "return !col || getline('.')[col - 1]	=~ '\s'
"endfunction
"inoremap <silent><expr> <Tab>
            "\ pumvisible() ? "\<C-n>" :
            "\ <SID>check_back_space() ? "\<Tab>" :
            "\ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> H :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes



" tagbar
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=0 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>tb :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签

" tagbar
let g:tagbar_map_showproto = ""
let g:tagbar_map_togglecaseinsensitive = ""
let g:tagbar_map_togglefold = "j"
let g:tagbar_map_preview = "l"
let g:tagbar_map_jump = "L"
let g:tagbar_map_openallfolds = "="
let g:tagbar_map_closeallfolds = "-"




" search
"nnoremap <LEADER>s :CtrlSF 
"
" none\done\start
" done within 1000ms will focus
"let g:ctrlsf_auto_focus = {
        "\ "at" : "done",
        "\ "duration_less_than": 1000
        "\ }
"let g:ctrlsf_mapping = {
            "\      "open"    : ["<CR>", "L"],
            "\      "openb"   : "O",
            "\      "split"   : "<C-O>",
            "\      "vsplit"  : "",
            "\      "tab"     : "t",
            "\      "tabb"    : "T",
            "\      "popen"   : "l",
            "\      "popenf"  : "P",
            "\      "quit"    : "q",
            "\      "next"    : "k",
            "\      "prev"    : "i",
            "\      "pquit"   : "q",
            "\      "loclist" : "",
            "\      "chgmode" : "M",
            "\      "stop"    : "<C-C>",
            "\  }


"edit 
"
"
""
"let g:multi_cursor_use_default_mapping=0
"" Default mapping
"let g:multi_cursor_start_word_key      = '<C-n>'
"let g:multi_cursor_select_all_word_key = '<A-n>'
"let g:multi_cursor_start_key           = 'g<C-n>'
"let g:multi_cursor_select_all_key      = 'g<A-n>'
"let g:multi_cursor_next_key            = '<C-n>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-m>'
"let g:multi_cursor_quit_key            = '<Esc>'

"let g:ctrlsf_default_root = 'project'


" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
"function! Replace(confirm, wholeword, replace)
    "wa
    "let flag = ''
    "if a:confirm
        "let flag .= 'gec'
    "else
        "let flag .= 'ge'
    "endif
    "let search = ''
    "if a:wholeword
        "let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    "else
        "let search .= expand('<cword>')
    "endif
    "let replace = escape(a:replace, '/\&~')
    "execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
"endfunction
"" 不确认、非整词
"nnoremap <Leader>rCW :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
"" 不确认、整词
"nnoremap <Leader>rCw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
"" 确认、非整词
"nnoremap <Leader>rcW :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
"" 确认、整词
"nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>


" ultisnips 模板补全

"let g:UltiSnipsSnippetDirectories=["mysnippets"]
" UltiSnips 的 tab 键与 YCM 冲突，重新设定

"let g:UltiSnipsExpandTrigger="<C-f>"

""接口转实现"
"let g:h2cppx_python_path = '/usr/bin/python2.7'
"nmap <F3>  :H2cppx<ESC>
"nmap <F4>  :H2cppxLine<ESC>

"buffer switch"

nmap <leader>1  :b1<CR> 
nmap <leader>2  :b2<CR> 
nmap <leader>3  :b3<CR> 
nmap <leader>4  :b4<CR> 
nmap <leader>5  :b5<CR> 
nmap <leader>6  :b6<CR> 
nmap <leader>7  :b7<CR> 
nmap <leader>8  :b8<CR> 
nmap <leader>9  :b9<CR> 
nmap <leader>0  :b10<CR> 
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <C-X> :bdelete<CR>


"fast visual"
" 快捷键
"map h <Plug>(wildfire-fuel)
"vmap ; <Plug>(wildfire-water)
"" 适用于哪些结对符
"let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

"undotree"
nnoremap <F5> :UndotreeToggle<cr>

"ctrlp"
"" 打开ctrlp搜索
"let g:ctrlp_map = '<leader>ff'
"let g:ctrlp_cmd = 'CtrlP'
"" 相当于mru功能，show recently opened files
"map <leader>fp :CtrlPMRU<CR>
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
"let g:ctrlp_custom_ignore = {
    "\ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    "\ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
    "\ }
""""\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
"let g:ctrlp_working_path_mode=0
"let g:ctrlp_match_window_bottom=1
"let g:ctrlp_max_height=15
"let g:ctrlp_match_window_reversed=0
"let g:ctrlp_mruf_max=500
"let g:ctrlp_follow_symlinks=1

""xptemplate"
"let g:xptemplate_vars = "BRfun= "
"let g:xptemplate_vars = "BRif= " 

"markdown
"
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
"let g:mkdp_auto_start = 0

" easymotion
"
nmap s <Plug>(easymotion-s2)


" vim-go
let g:go_doc_keywordprg_enabled = 0

" startify
let g:startify_bookmarks = [ {'c': '~/.vimrc'}, '~/.zshrc' ]
let g:startify_change_to_vcs_root = 1
"let g:startify_session_persistence    = 1
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Recent files'] },
  \ { 'type': 'sessions',  'header': ['   Saved sessions'] },
  \ ]

"if has('nvim')
      "autocmd TabNewEntered * Startify
    "else
      "autocmd BufWinEnter *
            "\ if !exists('t:startify_new_tab')
            "\     && empty(expand('%'))
            "\     && empty(&l:buftype)
            "\     && &l:modifiable |
            "\   let t:startify_new_tab = 1 |
            "\   Startify |
            "\ endif
    "endif

