set nocompatible "关闭兼容模式
let mapleader=" " "设置leader键,主键
set enc=utf-8
syntax on "代码高亮
set number "行号
set norelativenumber "不显示当前行号
set cursorline "当前行突出显示
"set cursorline cursorcolumn "突出显示行和累列
set wrap "自动换行
set showcmd "显示当前输入
set wildmenu "菜单命令补全
set hlsearch "搜索高亮
set incsearch "搜索中高亮
exec "nohlsearch"
set noignorecase "搜索区分大小写
set nosmartcase "搜索智能区分大小写
set splitright "有分屏
set splitbelow "上分屏
set tabstop=4 "制表符长度
set autoindent "自动缩进
set softtabstop=4 "TAB键的行为
set noexpandtab "用空格代替制表符
set shiftwidth=4 "缩进或移动空格数
set smarttab "在行和段开始处使用制表符
set smartindent "智能缩进
set autoindent "智能缩进
set cindent "智能缩进
"set nosplitright "左右分屏光标位置

filetype plugin indent on "插件

"undofile文件修改历史记录
if has("persistent_undo")
	let target_path = expand('~/.undodir')
	if !isdirectory(target_path)
		call mkdir(target_path, "p", 0700)
	endif
	let &undodir=target_path
	set undofile
endif

"光标状态
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
" 1 -> blinking block  闪烁的方块
" 2 -> solid block  不闪烁的方块
" 3 -> blinking underscore  闪烁的下划线
" 4 -> solid underscore  不闪烁的下划线
" 5 -> blinking vertical bar  闪烁的竖线
" 6 -> solid vertical bar  不闪烁的竖线

"@按键映射,执行Python程序
map <LEADER>r :call CompileRunPy()<CR>
func! CompileRunPy()
	exec "w"
	if &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!clear && python %"
	endif
endfunc

"@按键映射,Termux获取粘贴板
map <LEADER>p :read !termux-clipboard-get<CR>

"@按键映射,保存并退出
map <LEADER>q :wq<CR>

"@按键映射,打开NERDTree
map <LEADER>n :NERDTreeToggle<CR>

"按键映射,打开UndotreeToggle
map <LEADER>u :UndotreeToggle<CR>

"@按键映射,标签页快捷键
"上一个标签
map <LEADER><left> :tabp<CR>
"下一个标签
map <LEADER><right> :tabn<CR>
"第一个标签
map <LEADER><up> :tabr<CR>
"最后一个标签
map <LEADER><down> :tablast<CR>
	
let g:airline_powerline_fonts					= 1 " 使用 powerline 打过补丁的字体
let g:airline#extensions#tabline#enabled		= 1 " 开启 tabline
let g:airline#extensions#tabline#buffer_nr_show = 1 " 显示 buffer 编号
let g:airline#extensions#ale#enabled			= 1 " enable ale integration

"安装插件
call plug#begin()
Plug 'vim-airline/vim-airline' "状态栏
"Plug 'jiangmiao/auto-pairs' "自动补全括号
Plug 'scrooloose/nerdtree' "文件目录
Plug 'mbbill/undotree' "undotree
Plug 'yianwillis/vimcdoc' "中文文档
Plug 'tell-k/vim-autopep8' "python代码格式化
call plug#end()

"插件下载，需要先安装git
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

"autopep8
"需要先安装Python扩展包<pip install autopep8>
"vim执行<:Autopep8>命令格式化代码

