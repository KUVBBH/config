" ===vimrc按键映射
autocmd FileType vim inoremap <buffer> `< <Esc>/<++><CR>:nohlsearch<CR>c4l

autocmd FileType vim inoremap <buffer> `` <Esc>j08la

autocmd FileType vim inoremap <buffer> `_ <Esc>k08la


" ===gitcommit按键映射
autocmd Filetype gitcommit map <LEADER>d dd:0r !date +"\%Y-\%m-\%d \%H:\%M:\%S"<CR>



" ===markdown按键映射

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

autocmd Filetype markdown inoremap `j <img src="" width="auto<++>" height="auto<++>" alt="None"<++>><++><Esc>0f"a

autocmd Filetype markdown inoremap `~ ~~~~ <++><Esc>F~hi

autocmd Filetype markdown inoremap `- ---<Enter><Enter>

autocmd Filetype markdown inoremap `= ===<Enter><Enter>

autocmd Filetype markdown inoremap `l --------<Enter>

autocmd Filetype markdown inoremap `i <++>


" ===Python按键映射

autocmd Filetype python map <LEADER>b :Black<CR>

autocmd Filetype python inoremap `< <Esc>/<++><CR>:nohlsearch<CR>c4l

autocmd Filetype python inoremap `( ()<++><Esc>F(a

autocmd Filetype python inoremap `[ []<++><Esc>F[a

autocmd Filetype python inoremap `{ {}<++><Esc>F{a

autocmd Filetype python inoremap `' ''<++><Esc>F'i

autocmd Filetype python inoremap `" ""<++><Esc>F"i


" ===html,css按键映射

autocmd Filetype html,css imap `` <C-Y>,

autocmd Filetype html,css vmap `` <C-Y>,

autocmd Filetype html,css nmap `` <C-Y>,

autocmd Filetype html,css imap `/ <C-Y>/

autocmd Filetype html,css imap `# <!--  --><Esc>2F-hi

autocmd Filetype html,css imap `< <C-Y>N

autocmd Filetype html,css imap `> <C-Y>n

autocmd Filetype html,css imap `d <C-Y>d

autocmd Filetype html,css imap `D <C-Y>D

autocmd Filetype html,css imap `a <C-Y>a

autocmd Filetype html,css imap `A <C-Y>A

autocmd Filetype html,css imap `j <C-Y>j

autocmd Filetype html,css imap `k <C-Y>k

autocmd Filetype html,css imap `i <C-Y>i

autocmd Filetype html,css imap `m <C-Y>m

autocmd Filetype html,css imap `o <Esc>o

autocmd Filetype html,css imap `O <Esc>O

autocmd Filetype html,css imap `u <Esc>uA

autocmd Filetype html,css imap `U <Esc><C-R>A


" 按键映射,执行bash,Python,MarkDown
map <LEADER>r :call CompileRun()<CR>
func! CompileRun()
	exec "w"
	if &filetype == 'sh'
		exec "!time bash %"
	elseif &filetype == 'python'
		exec "!clear && python %"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'html'
		exec "!python ~/.vim/config/.vim/mypy/HttpServer.py dir $(pwd)"
	endif
endfunc

autocmd Filetype html map <LEADER>R :!python ~/.vim/config/.vim/mypy/HttpServer.py file $(pwd) %<CR>

autocmd Filetype html map <LEADER>s :!python ~/.vim/config/.vim/mypy/HttpServer.py stop<CR>

" 按键映射,Termux获取粘贴板
" map <LEADER>p :read !termux-clipboard-get<CR>

" 按键映射,保存并退出
map <LEADER>q :wq<CR>

" 按键映射,保存
map <LEADER><Space> :w<CR>

" 按键映射,打开NERDTree
map <LEADER>n :NERDTreeToggle<CR>

" 按键映射,打开UndotreeToggle
map <LEADER>u :UndotreeToggle<CR>

