" 关闭兼容模式
set nocompatible

" 开启备份功能
set backup

" 备份保存位置
set backupdir=/storage/emulated/0/vim备份

" 设置leader键,主键
let mapleader=" "

" 文件编码
set enc=utf-8

" 代码高亮
syntax on

" 左侧显示行号
set number

" 相对行号显示
set relativenumber

" 突出显示当前行
set cursorline

" 突出显示当前列
" set cursorcolumn

" 文本自动换行
set wrap

" 显示正在键入的命令或者动作
set showcmd

" 菜单命令补全
set wildmenu

" 搜索高亮
set hlsearch

" 搜索结果即时显示
set incsearch

" 清除搜索高亮
exec "nohlsearch"

" 搜索区分大小写
set noignorecase

" 搜索智能区分大小写
set nosmartcase

" 分屏
" set splitright
" set splitbelow

" 制表符长度
set tabstop=4

" 自动缩进
set autoindent

" Tap和Backspace的行为
set softtabstop=4 

" 用空格代替制表符
set expandtab

" 自动缩进和宽度
set shiftwidth=4

" 自动Tab
set smarttab

" 智能缩进
set smartindent

" 智能缩进，联系上文
set autoindent

" C,C++的智能缩进
set cindent

" 开启插件
filetype plugin indent on



" ===
" ===安装插件
" ===
call plug#begin()

" 状态栏
Plug 'vim-airline/vim-airline'

" 自动补全括号
" Plug 'jiangmiao/auto-pairs' 

" 文件目录
Plug 'scrooloose/nerdtree'

" undotree
Plug 'mbbill/undotree'

" 中文文档
Plug 'yianwillis/vimcdoc'

" python代码格式化
" Plug 'tell-k/vim-autopep8'

" MarkDown预览
Plug 'instant-markdown/vim-instant-markdown', {'for': ['markdown'], 'do': 'yarn install'} 

" MarkDown预览
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install','for' :['markdown', 'vim-plug']}

" 制表插件
Plug 'dhruvasagar/vim-table-mode',{'for': ['markdown']}

" python代码补全
Plug 'davidhalter/jedi-vim',{'for': ['python']}

" 按键提示
Plug 'liuchengxu/vim-which-key'

" html补全
Plug 'mattn/emmet-vim',{'for': ['html', 'css']}


call plug#end()

" 插件下载，需要先安装git
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" autopep8
" 需要先安装Python扩展包<pip install autopep8>
" vim执行<:Autopep8>命令格式化代码

" vim-instant-markdown
" pkg install nodejs,yarn
" https://github.com/instant-markdown/vim-instant-markdown

" davidhalter/jedi-vim
" pkg install vim-python
" pip install jedi




" ===
" ===自定义命令
" ===

" python pdb
" autocmd Filetype python command! -nargs=0 PDB :w | below terminal python %


" ===
" ===按键映射
" ===
source ~/.vim/config/.vim/myvimrc/KeyMap.vim




" ===
" ===插件设置
" ===

" ===vim-which-key
source ~/.vim/config/.vim/myvimrc/MyWhichKey.vim

" ===jedi-vim
source ~/.vim/config/.vim/myvimrc/MyJedi.vim

" ===vim-table-mode
source ~/.vim/config/.vim/myvimrc/MyTableMmode.vim

" ===MarkDown for vim-instant-markdown
source ~/.vim/config/.vim/myvimrc/InstantMarkdown.vim

" ===Markdown Preview for (Neo)vim
" source ~/.vim/myvimrc/MarkdownPreview.vim

" ===vim-airline
source ~/.vim/config/.vim/myvimrc/MyAirline.vim

" ===emmet
source ~/.vim/config/.vim/myvimrc/MyEmmet.vim

" 狗屁不通
autocmd Filetype html source ~/.vim/config/.vim/myvimrc/lorem.vim
autocmd Filetype html imap `g <Esc>:GouPiBuTong<CR>i
" source ~/.vim/config/.vim/myvimrc/lorem.vim

" ===
" ===undofile文件修改历史记录
" ===

if has("persistent_undo")
	let target_path = expand('~/.undodir')
	if !isdirectory(target_path)
		call mkdir(target_path, "p", 0700)
	endif
	let &undodir=target_path
	set undofile
endif




" ===
" ===光标状态
" ===

let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

" 1 -> blinking block  闪烁的方块
" 2 -> solid block  不闪烁的方块
" 3 -> blinking underscore  闪烁的下划线
" 4 -> solid underscore  不闪烁的下划线
" 5 -> blinking vertical bar  闪烁的竖线
" 6 -> solid vertical bar  不闪烁的竖线

