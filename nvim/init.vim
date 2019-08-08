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

inoremap ∆ <left>
inoremap ¬ <right>
inoremap ˆ <up>
inoremap ˚ <down>

vnoremap I 5<Up>
vnoremap K 5<Down>


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
map <LEADER>sc :set spell!<CR> 
noremap <C-x> ea<C-x>s 
inoremap <C-x> <Esc>ea<C-x>s

"man" 启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim
" 定义:Man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>





function! g:BuffetSetCustomColors()
    hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#859900 guifg=#D3D3D3
    hi! BuffetActiveBuffer cterm=NONE ctermbg=10 ctermfg=2 guibg=#00BFFF guifg=#D3D3D3
    hi! BuffetBuffer cterm=NONE ctermbg=10 ctermfg=8 guibg=#676868 guifg=#DCDCDC
    hi! BuffetTrunc cterm=bold ctermbg=11 ctermfg=8 guibg=#999999 guifg=#000000
    hi! BuffetTab cterm=NONE ctermbg=4 ctermfg=8 guibg=#288BD3 guifg=#000000

endfunction






set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin('~/.vim/bundle')
"" pretty
Plugin 'VundleVim/Vundle.vim' 
Plugin 'vim-airline/vim-airline' 
Plugin 'connorholyday/vim-snazzy'
Plugin 'dracula/vim'
Plugin 'itchyny/vim-cursorword'
Plugin 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
""Plugin 'fholgado/minibufexpl.vim'
Plugin 'ryanoasis/vim-devicons'
"Plugin 'bagrat/vim-buffet'
Plugin 'mhinz/vim-startify'
Plugin 'altercation/vim-colors-solarized'

""
""
""
""
"""nerdtree
Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plugin 'Xuyuanp/nerdtree-git-plugin'
""
"""tagbar
Plugin 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
""
""" Error checking
"Plugin 'w0rp/ale'
""
""" ycm
Plugin 'Valloric/YouCompleteMe'
""
""" Undo Tree
Plugin 'mbbill/undotree'
""
""" Python
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-python/python-syntax'
""
""" Bookmarks
"Plugin 'kshenoy/vim-signature'
""
""" git
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'

""
" doxygen
Plugin 'vim-scripts/DoxygenToolkit.vim'
""
""" c++ highlight
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'STL-improved'
""
""
""" others
Plugin 'junegunn/goyo.vim' 
Plugin 'derekwyatt/vim-fswitch' 
Plugin 'fadein/vim-FIGlet'
Plugin 'CodeFalling/fcitx-vim-osx'
""
""
""
"""search
Plugin 'dyng/ctrlsf.vim' 
Plugin 'mileszs/ack.vim'
""Plugin 'ctrlpvim/ctrlp.vim'
" Fast file navigation
""Plugin 'wincent/Command-T'

""
"""edit
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
""Plugin 'derekwyatt/vim-protodef'
Plugin 'vim-scripts/h2cppx'
Plugin 'gcmt/wildfire.vim'
Plugin 'drmingdrmer/xptemplate'
Plugin 'godlygeek/tabular'
Plugin 'jiangmiao/auto-pairs'


Plugin 'junegunn/fzf.vim'



"colorscheme
Plugin 'junegunn/seoul256.vim' 
Plugin 'yuttie/inkstained-vim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'ayu-theme/ayu-vim'

"Plugin 'roxma/nvim-yarp'
"Plugin 'ncm2/ncm2'
"Plugin 'ncm2/ncm2-bufword'
"Plugin 'ncm2/ncm2-path'
"Plugin 'ncm2/ncm2-pyclang'


call vundle#end()

"set background=dark
"colorscheme seoul256-light
let ayucolor="light"  " for light version of theme
colorscheme ayu

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
"let g:airline_theme='dracula'
let g:airline_theme='ayu_light'
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
let NERDTreeMapJumpFirstChild = "I"
let NERDTreeMapJumpLastChild = "K"
let NERDTreeMapToggleHidden = "H"

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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









" ===
" " === You Complete ME
" " ===
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>

let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
""let g:ycm_use_clangd = 0



" vim-fswitch
nmap <silent> <Leader>sw :FSHere<cr>


" vim-signature
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


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
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }




" tagbar
let g:tagbar_map_showproto = ""
let g:tagbar_map_togglecaseinsensitive = ""
let g:tagbar_map_togglefold = "j"
let g:tagbar_map_preview = "l"
let g:tagbar_map_jump = "L"
let g:tagbar_map_openallfolds = "="
let g:tagbar_map_closeallfolds = "-"




" search
nnoremap <LEADER>s :CtrlSF 
" none\done\start
" done within 1000ms will focus
let g:ctrlsf_auto_focus = {
        \ "at" : "done",
        \ "duration_less_than": 1000
        \ }
let g:ctrlsf_mapping = {
            \      "open"    : ["<CR>", "L"],
            \      "openb"   : "O",
            \      "split"   : "<C-O>",
            \      "vsplit"  : "",
            \      "tab"     : "t",
            \      "tabb"    : "T",
            \      "popen"   : "l",
            \      "popenf"  : "P",
            \      "quit"    : "q",
            \      "next"    : "k",
            \      "prev"    : "i",
            \      "pquit"   : "q",
            \      "loclist" : "",
            \      "chgmode" : "M",
            \      "stop"    : "<C-C>",
            \  }


"edit 
"
"
"
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-m>'
let g:multi_cursor_quit_key            = '<Esc>'

let g:ctrlsf_default_root = 'project'


" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>rCW :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rCw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rcW :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>


" ultisnips 模板补全

"let g:UltiSnipsSnippetDirectories=["mysnippets"]
" UltiSnips 的 tab 键与 YCM 冲突，重新设定

let g:UltiSnipsExpandTrigger="<C-f>"

"接口转实现"
let g:h2cppx_python_path = '/usr/bin/python2.7'
nmap <F3>  :H2cppx<ESC>
nmap <F4>  :H2cppxLine<ESC>

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
map h <Plug>(wildfire-fuel)
vmap ; <Plug>(wildfire-water)
" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

"undotree"
nnoremap <F5> :UndotreeToggle<cr>

"ctrlp"
"" 打开ctrlp搜索
let g:ctrlp_map = '<leader>ff'
let g:ctrlp_cmd = 'CtrlP'
" 相当于mru功能，show recently opened files
map <leader>fp :CtrlPMRU<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
    \ }
"""\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

"xptemplate"
let g:xptemplate_vars = "BRfun= "
let g:xptemplate_vars = "BRif= " 

"markdown
"
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1
