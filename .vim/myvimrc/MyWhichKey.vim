source ~/.vim/config/.vim/myhelp/0.vim
source ~/.vim/config/.vim/myhelp/1.vim
source ~/.vim/config/.vim/myhelp/2.vim
source ~/.vim/config/.vim/myhelp/3.vim
source ~/.vim/config/.vim/myhelp/4.vim
source ~/.vim/config/.vim/myhelp/5.vim
source ~/.vim/config/.vim/myhelp/6.vim
source ~/.vim/config/.vim/myhelp/7.vim
source ~/.vim/config/.vim/myhelp/8.vim




" 按键等待超时ms
" set timeoutlen=1000

" 示例快捷键
" nnoremap <leader>1 :1wincmd w<CR>
" nnoremap <leader>_a :echom '_a'<CR>
" 忽略于数字1关键的快捷键
" let g:which_key_map.1 = 'which_key_ignore'
" 忽略以'_'开头的快捷键
" let g:which_key_map['_'] = { 'name': 'which_key_ignore' }

" 只显示自定义的描述字典
let g:which_key_ignore_outside_mappings = 1

let g:which_key_map = {}

let g:which_key_map[1] = {
    \ 'name' : 'VIM操作指南' ,
    \ '0' : g:help_0 ,
    \ '1' : g:help_1 ,
    \ '2' : g:help_2 ,
    \ '3' : g:help_3 ,
    \ '4' : g:help_4 ,
    \ '5' : g:help_5 ,
    \ '6' : g:help_6 ,
    \ '7' : g:help_7 ,
    \ '8' : g:help_8 ,
    \ }

" MarkDown
autocmd FileType markdown source ~/.vim/config/.vim/myhelp/markdown.vim
autocmd FileType markdown let g:which_key_map[2]=g:help_md_1
autocmd FileType markdown let g:which_key_map[3]=g:help_md_2

" Python
autocmd FileType python source ~/.vim/config/.vim/myhelp/python.vim
autocmd FileType python let g:which_key_map[2]=g:help_python

" HTML
autocmd FileType html,css source ~/.vim/config/.vim/myhelp/html.vim
autocmd FileType html,css let g:which_key_map[2]=g:help_html
autocmd FileType html,css let g:which_key_map[3]=g:help_emmet



    
" ===
" ===vim-which-key 按键映射
" ===

call which_key#register('MyHelp', "g:which_key_map")

nnoremap <silent> <leader>h :WhichKey 'MyHelp'<CR>
