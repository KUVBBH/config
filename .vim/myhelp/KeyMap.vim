source ~/.vim/myhelp/0.vim
source ~/.vim/myhelp/1.vim
source ~/.vim/myhelp/2.vim
source ~/.vim/myhelp/3.vim
source ~/.vim/myhelp/4.vim




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
    \ }

" MarkDown
autocmd FileType markdown source ~/.vim/myhelp/markdown.vim
autocmd FileType markdown let g:which_key_map[2]=g:help_md_1
autocmd FileType markdown let g:which_key_map[3]=g:help_md_2

" Python
autocmd FileType python source ~/.vim/myhelp/python.vim
autocmd FileType python let g:which_key_map[2]=g:help_python




" ===
" ===vim-which-key 按键映射
" ===

call which_key#register('MyHelp', "g:which_key_map")

nnoremap <silent> <leader>h :WhichKey 'MyHelp'<CR>
