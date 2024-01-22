" https://vimcdoc.sourceforge.net/doc/usr_11.html#usr_11.txt
" Vim 9.0

let g:help_5 = {
    \ 'name' : '崩溃恢复' ,
    \ 'A1        vim -r 1.txt' : '恢复文件' ,
    \ 'A2           vim -r ""' : '恢复没有给丁文件名的文件' ,
    \ 'A3              vim -r' : '交换文件的保存位置' ,
    \ 'A4    vim -r 1.txt.swo' : '使用swo文件恢复' ,
    \ 'A5    [O]pen Read-Only' : 'O用只读方式打开文件' ,
    \ 'A6       (E)dit anyway' : '直接编辑' ,
    \ 'A7           (R)ecover' : '从交换文件中恢复文件' ,
    \ 'A8              (Q)uit' : '退出' ,
    \ 'A9             (A)bort' : '终止' ,
    \ 'B1         (D)elete it' : '删除交换文件' ,
    \ }
