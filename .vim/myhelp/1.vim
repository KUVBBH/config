" https://vimcdoc.sourceforge.net/doc/usr_03.html#usr_03.txt
" Vim 9.0

let g:help_1 = {
    \ 'name' : '词移动,行移动,查找,标记,标记' ,
    \ 'A1              w,b' : '移动到下一个,上一个词的词头' ,
    \ 'A2             e,ge' : '移动到下一个,上一个词的词尾' ,
    \ 'A3         W,B,E,gE' : '字串间移动' ,
    \ 'A4                $' : '移动到行尾' ,
    \ 'A5                0' : '移动到行首' ,
    \ 'A6                ^' : '移动到行首非空字符' ,
    \ 'A7               2$' : '移动到下一行的行尾' ,
    \ 'A8            fx,Fx' : '向前,向后查找并移动到本行中的字符x' ,
    \ 'A9              3fx' : '执行 3 次fx操作' ,
    \ 'B1            tx,Tx' : '向前,向后查找并移动到x的前一个字符' ,
    \ 'B2                %' : '括号间跳转' ,
    \ 'B3             gg,G' : '移动到文件开头,结尾' ,
    \ 'B4         15gg,15G' : '跳转到第15行' ,
    \ 'B5              50%' : '跳转到第(总行数*50%)行' ,
    \ 'B6            H,M,L' : '跳转到当前屏幕的行首,行中,行尾' ,
    \ 'B7           CTRL-G' : '光标定位' ,
    \ 'B8    CTRL-U,CTRL-D' : '半屏滚动' ,
    \ 'B9    CTRL-E,CTRL-Y' : '行滚动' ,
    \ 'C1    CTRL-F,CTRL-B' : '全屏滚动' ,
    \ 'C2         zt,zz,zb' : '当前行置于屏幕顶部,中部,底部' ,
    \ 'C3            /x,?x' : '正向,反向查找x' ,
    \ 'C4              n,N' : '正向,反向在查找结果之间跳转' ,
    \ 'C5    /<Up>,/<Down>' : '历史查找记录' ,
    \ 'C6           /\<X\>' : '\<,\>,匹配单词开头,结尾' ,
    \ 'C7          /^x,/x$' : '仅在行首,行尾匹配x' ,
    \ 'C8             /a.b' : '匹配字符a+一个任意字符+字符b' ,
    \ "C9            ``,''" : '来回跳转' ,
    \ 'D1   CTRL-O ,CTRL-I' : '跳转到较老,较新的位置' ,
    \ 'D2           :jumps' : '可用跳转列表' ,
    \ 'D3               ma' : '标记当前位置并且命名为标记a' ,
    \ 'D4               `a' : '跳转到a标记' ,
    \ 'D5           :marks' : '所有标记列表' ,
    \ "D6               `'" : '跳转前的光标位置' ,
    \ 'D7         "`,[`,]`' : '最后编辑,修改开始,修改结束的位置' ,
    \ }
