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




" ===
" ===MarkDown for vim-instant-markdown===
" ===

" 是否使用慢速模式，默认为 0（关闭），设为 1 则开启。
let g:instant_markdown_slow = 0

" 是否在 Vim 启动时自动启动 Markdown 实时预览，设为 0（不自动启动），设为 1 则自动启动。
let g:instant_markdown_autostart = 1

" 是否启用 MathJax 支持 LaTeX 公式渲染，设为 1（启用）。
let g:instant_markdown_mathjax = 1

"是否启用 Mermaid.js 支持流程图和序列图，设为 1（启用）。
let g:instant_markdown_mermaid = 0


" 是否启用预览窗口跟随编辑窗口自动滚动，设为 0（关闭）。
let g:instant_markdown_autoscroll = 1




"" ===
"" ===Markdown Preview for (Neo)vim===
"" ===
"" 是否自动启动 1自动启动
"let g:mkdp_auto_start = 1
"
"" 样式
"" let g:mkdp_markdown_css = expand('')
"
"" 退出时自动关闭 1自动关闭
"let g:mkdp_auto_close = 1
"
"" 0快刷新 1慢刷新
"let g:mkdp_refresh_slow =0
"
"" 0命令只有在.md文件下生效 
"let g:mkdp_command_for_global = 0
"
"" 仅限本地访问
"let g:mkdp_open_to_the_world = 0
"
"" let g:mkdp_open_ip = ''
"
"" 打开所用的浏览器
"" let g:mkdp_browser = ''
"
"" 0不显示服务器地址
"let g:mkdp_echo_preview_url = 1
"
"" let g:mkdp_browserfunc = ''
"
"" `'mkit'`, `'katex'`, `'uml'`, `'maid'`: 分别对应不同的 Markdown 扩展支持，如
"" mkit 提供额外的 Markdown 语法扩展支持，katex 支持 KaTeX 数学公式渲染，uml
"" 支持 UML 图形渲染，maid 可能是提供更深入的 Markdown 属性解析。
"" `'disable_sync_scroll': 0`：启用预览窗口与编辑窗口的同步滚动功能。
"" `'sync_scroll_type': 'middle'`：同步滚动时，以两个窗口的中间点进行对齐。
"" `'hide_yaml_meta': 1`：隐藏 Markdown 文件开头的 YAML 元数据。
"" `'sequence_diagrams': {}` 和 `'flowchart_diagrams':
"" {}`：分别支持序列图和流程图的渲染。
"" `'content_editable': v:false`：关闭在预览页面直接编辑内容的功能。
"" `'disable_filename': 0`：显示预览页面顶部的文件名，默认为开启。
"" `'toc': {}`：配置目录（Table of
"" Contents）相关选项。这里的空字典表示使用默认设置。
"let g:mkdp_preview_options = {
	    "\ 'mkit': {},
		"\ 'katex': {},
		"\ 'uml': {},
		"\ 'maid': {},
		"\ 'disable_sync_scroll': 0,
		"\ 'sync_scroll_type': 'middle',
		"\ 'hide_yaml_meta': 1,
		"\ 'sequence_diagrams': {},
		"\ 'flowchart_diagrams': {},
		"\ 'content_editable': v:false,
		"\ 'disable_filename': 0,
		"\ 'toc': {}
    "\ }
"
"" 代码高亮样式
"" let g:mkdp_highlight_css = ''
"
"" 服务器端口
"let g:mkdp_port = ''
"
"" 当前文件名
"let g:mkdp_page_title = '「${name}」'
"
"" 图片路径
"" let g:mkdp_images_path = /home/user/.markdown_images
"
"" 文件类型
"let g:mkdp_filetypes = ['markdown']
"
"" 主题样式 dark or light
"" let g:mkdp_theme = 'light'
"
"" 当值为 `0`时，表示不启用预览窗口与编辑窗口的合并显示功能。这意味着预览窗口将会作为独立的窗口打开，与编辑Markdown 文件的窗口分开显示。
"" 如果将此值设为`1`，则插件可能尝试将预览内容和编辑内容在一个窗口内垂直或水平分割显示，具体实现取决于插件的功能设计。通过开启这一选项，用户可以在同一窗口中同时查看和编辑Markdown 文档以及其实时预览效果。
"let g:mkdp_combine_preview = 0
"
"" 同步刷新
"let g:mkdp_combine_preview_auto_refresh = 1



autocmd Filetype markdown inoremap `< <Esc>/<++><CR>:nohlsearch<CR>c4l

autocmd Filetype markdown inoremap `b **** <++><Esc>F*hi

autocmd Filetype markdown inoremap `* ** <++><Esc>F*i

autocmd Filetype markdown inoremap `` `` <++><Esc>F`i

autocmd Filetype markdown inoremap `c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA

autocmd Filetype markdown inoremap `1 #<Space><Enter><++><Esc>kA

autocmd Filetype markdown inoremap `2 ##<Space><Enter><++><Esc>kA

autocmd Filetype markdown inoremap `3 ###<Space><Enter><++><Esc>kA

autocmd Filetype markdown inoremap `4 ####<Space><Enter><++><Esc>kA

autocmd Filetype markdown inoremap `5 #####<Space><Enter><++><Esc>kA

autocmd Filetype markdown inoremap `6 ######<Space><Enter><++><Esc>kA

autocmd Filetype markdown inoremap `p ![](<++>) <++><Esc>F[a

autocmd Filetype markdown inoremap `~ ~~~~ <++><Esc>F~hi

autocmd Filetype markdown inoremap `- ---<Enter><Enter>

autocmd Filetype markdown inoremap `_ ___<Enter><Enter>

autocmd Filetype markdown inoremap `l --------<Enter>




" ===
" ===
" ===
filetype plugin indent on "插件

" undofile文件修改历史记录
if has("persistent_undo")
	let target_path = expand('~/.undodir')
	if !isdirectory(target_path)
		call mkdir(target_path, "p", 0700)
	endif
	let &undodir=target_path
	set undofile
endif

" 光标状态
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
" 1 -> blinking block  闪烁的方块
" 2 -> solid block  不闪烁的方块
" 3 -> blinking underscore  闪烁的下划线
" 4 -> solid underscore  不闪烁的下划线
" 5 -> blinking vertical bar  闪烁的竖线
" 6 -> solid vertical bar  不闪烁的竖线

" @按键映射,执行Python程序
map <LEADER>r :call CompileRunPy()<CR>
func! CompileRunPy()
	exec "w"
	if &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!clear && python %"
	endif
endfunc

" @按键映射,Termux获取粘贴板
map <LEADER>p :read !termux-clipboard-get<CR>

" @按键映射,保存并退出
map <LEADER>q :wq<CR>

" @按键映射,打开NERDTree
map <LEADER>n :NERDTreeToggle<CR>

" 按键映射,打开UndotreeToggle
map <LEADER>u :UndotreeToggle<CR>

" @按键映射,标签页快捷键
" 上一个标签
map <LEADER><left> :tabp<CR>
" 下一个标签
map <LEADER><right> :tabn<CR>
" 第一个标签
map <LEADER><up> :tabr<CR>
" 最后一个标签
map <LEADER><down> :tablast<CR>
	
let g:airline_powerline_fonts					= 1 " 使用 powerline 打过补丁的字体
let g:airline#extensions#tabline#enabled		= 1 " 开启 tabline
let g:airline#extensions#tabline#buffer_nr_show = 1 " 显示 buffer 编号
let g:airline#extensions#ale#enabled			= 1 " enable ale integration

" ===
" ===安装插件
" ===
call plug#begin()
Plug 'vim-airline/vim-airline' "状态栏
" Plug 'jiangmiao/auto-pairs' "自动补全括号
Plug 'scrooloose/nerdtree' "文件目录
Plug 'mbbill/undotree' "undotree
Plug 'yianwillis/vimcdoc' "中文文档
Plug 'tell-k/vim-autopep8' "python代码格式化
Plug 'instant-markdown/vim-instant-markdown', {'for': ['markdown', 'vim-plug'], 'do': 'yarn install'} "MarkDown预览
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install','for' :['markdown', 'vim-plug']}

call plug#end()

" 插件下载，需要先安装git
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" autopep8
" 需要先安装Python扩展包<pip install autopep8>
" vim执行<:Autopep8>命令格式化代码


" vim-instant-markdown
" pkg install nodejs,yarn
" https://github.com/instant-markdown/vim-instant-markdown
