source ~/.vim/myhelp/0.vim
source ~/.vim/myhelp/1.vim
source ~/.vim/myhelp/2.vim
source ~/.vim/myhelp/3.vim

" 按键等待超时ms
set timeoutlen=1000

" ===忽略快捷键
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
    \ }






"
" let g:which_key_map[2] = {
"    \ 'name' : '命 令 行' ,
"    \ }







" let g:which_key_map[1]['Y'] = {
    " \ 'name' : '移动' ,
    " \ 'A1         k,j,h,l' : '上,下,左,右' ,
    " \ 'A2             w,W' : '下一个单词的开头' ,
    " \ 'A3             e,E' : '下一个单词的末尾' ,
    " \ 'A4             b,B' : '上一个单词的开头' ,
    " \ 'A5              ge' : '上一个单词的末尾' ,
    " \ 'A6               0' : '行首' ,
    " \ 'A7               $' : '行尾' ,
    " \ 'A8               ^' : '第一个非空字符' ,
    " \ 'A9              2|' : '移动到当前行第二列' ,
    " \ 'B1              fx' : '移动到当前行的第一个字符x上' ,
    " \ 'B2             3fx' : '移动到当前行的第三个字符x上' ,
    " \ 'B3              tx' : '移动到目标字符x的前一个字符上' ,
    " \ 'B4             ; ,' : '正向,逆向重复f指令' ,
    " \ 'B5               %' : '符号间的移动' ,
    " \ 'B6               (' : '移到当前句的开头' ,
    " \ 'B7               )' : '移到下一句的开头' ,
    " \ 'B8               {' : '移到当前段的开头' ,
    " \ 'B9               }' : '移到下一段的开头' ,
    " \ 'C1              [[' : '移到这一节的开头' ,
    " \ 'C2              ]]' : '移到下一节的开头' ,
    " \ 'C3              ``' : '回到之前的位置' ,
    " \ 'C4          xG,xgg' : '移动到指定的第x行' ,
    " \ 'C5              gg' : '移动到文件开头' ,
    " \ 'C6               G' : '移动到文件末尾' ,
    " \ 'C7              x%' : '移动到文件x%处' ,
    " \ 'C8               H' : '移动到当前屏幕开头' ,
    " \ 'C9               M' : '移动到当前屏幕中间' ,
    " \ 'D1               L' : '移动到当前屏幕末尾' ,
    " \ 'D2   ctrl+G,ctrl+g' : '查看当前的位置状态' ,
    " \ 'D3   ctrl+u,ctrl+d' : '屏幕滚动-半屏' ,
    " \ 'D4   ctrl+f,ctrl+b' : '屏幕滚动-全屏' ,
    " \ 'D5              zz' : '将光标置于屏幕的中间' ,
    " \ 'D6              zt' : '将光标置于屏幕的顶部' ,
    " \ 'D7              zb' : '将光标置于屏幕的底部' ,
    " \ 'D8        mx,my,mz' : '设置跳转标记x,y,z' ,
    " \ 'D9               `' : '跳转标记' ,
    " \ }
" 
" let g:which_key_map[2]['Q'] = {
    " \ 'name' : '保存和退出' ,
    " \ 'A1    :q' : '若无修改，直接退出' ,
    " \ 'A2   :q!' : '放弃修改并退出' ,
    " \ 'A3   :wq' : '保存并退出' ,
    " \ 'A4    :U' : '恢复一整行原来的面貌（文件打开时的文本状态)' ,
    " \ 'A5   :e!' : '放弃修改，重新回到文件打开时的状态' ,
    " \ }
" 
" let g:which_key_map[2]['B'] = {
    " \ 'name' : 'buffers' ,
    " \ 'A1         :buffers' : '查看缓冲区列表' ,
    " \ 'A2        :buffer N' : '跳转到指定缓冲区' ,
    " \ 'A3     :bnext,bprev' : '遍历缓冲区列表' ,
    " \ 'A4    :bfirst,blast' : '跳到缓冲区列表的开头,结尾' ,
    " \ 'A5        :write,:w' : '将缓冲区的修改保存到磁盘上' ,
    " \ 'A6       :edit file' : '编辑另一个文件' ,
    " \ 'A7        :edit!,e!' : '放弃缓冲区的修改，恢复到文件打开时的状态' ,
    " \ 'A8           :wnext' : '保存当前修改，跳转到下一个文件' ,
    " \ 'A9   :set autowrite' : '自动保存' ,
    " \ }
" 
" let g:which_key_map[2]['S'] = {
    " \ 'name' : '文本的查找与替换' ,
    " \ 'A1          :s/old/new' : '将当前行的第一个字符串old替换为new' ,
    " \ 'A2        :s/old/new/g' : '将当前行的所有字符串old替换为new' ,
    " \ 'A3      :90s/old/new/g' : '将指定行的所有字符串old替换为new' ,
    " \ 'A4   :90,93s/old/new/g' : '将指定范围的行的所有字符串old替换为new' ,
    " \ 'A5       :%s/old/new/g' : '将文本中所有的字符串old替换为new' ,
    " \ 'A6      :%s/old/new/gc' : '依次替换每个字符串关键字' ,
    " \ 'A7   :%s/^struct/int/g' : '将所有以struct开头的字符串替换为int' ,
    " \ 'A8         :nohlsearch' : '关闭搜索高亮' ,
    " \ 'A9            :set hls' : '设置高亮搜索' ,
    " \ }
" 
" let g:which_key_map[1]['I'] = {
    " \ 'name' : '插入' ,
    " \ 'A1   i,a' : '当前光标前插入,后插入' ,
    " \ 'A2   I,A' : '当前行前插入,后插入' ,
    " \ 'A3   o,O' : '下一行,上一行插入' ,
    " \ 'A4     s' : '删除当前光标处的字符并进入到插入模式' ,
    " \ 'A5     S' : '删除当前行并进入到插入模式' ,
    " \ 'A6    cw' : '删除从光标处到单词结尾的文本并进入到插入模式' ,
    " \ 'A7    cb' : '删除从光标处到单词开头的文本并进入到插入模式' ,
    " \ 'A8    cc' : '删除一整行并进入到插入模式' ,
    " \ }
" 
" let g:which_key_map[1]['D'] = {
    " \ 'name' : '删除' ,
    " \ 'A1   x,X' : '删除当前光标下,光标前的字符' ,
    " \ 'A2    dw' : '删除一个单词' ,
    " \ 'A3   daw' : '无论光标在什么位置，删除光标所在的整个单词' ,  
    " \ 'A4   diw' : '删除整个单词文本，但是保留空格字符不删除' ,  
    " \ 'A5   d2w' : '删除从当前光标开始处的2个单词' ,  
    " \ 'A6    d$' : '删除至行尾' ,  
    " \ 'A7    d0' : '删除至行首' ,  
    " \ 'A8    dd' : '删除行' ,  
    " \ 'A9   dgg' : '删除至文本开头' ,  
    " \ 'B1    dG' : '删除至文本结束' , 
    " \ }
" 
" let g:which_key_map[1]['Z'] = {
    " \ 'name' : '折叠' ,
    " \ 'A1  zf200G' : '将光标和200行之间的代码折叠起来' ,
    " \ 'A2      za' : '打开和关闭折叠' ,
    " \ 'A3   zr,zm' : '按层打开,关闭折叠' ,
    " \ 'A4   zR,zM' : '打开,关闭所有的折叠' ,
    " \ 'A5      zj' : '跳转到下一个折叠处' ,
    " \ 'A6      zk' : '跳转到上一个折叠处' ,
    " \ 'A7   zd,zD' : '删除光标下的折叠,所有折叠' ,
    " \ 'A8      zE' : '删除所有的折叠标签' ,
    " \ }
" 
" 
" let g:which_key_map[1]['Q'] = {
    " \ 'name' : '宏' ,
    " \ 'A1.       qa' : '开始录制宏，并且命名为a' ,
    " \ 'A2.        q' : '结束录制' ,
    " \ 'A5.   :reg a' : '查看宏a的内容' ,
    " \ 'A3.       @a' : '执行宏' ,
    " \ 'A4.      5@a' : '执行5次' ,
    " \ }
" 
" let g:which_key_map[1]['C'] = {
    " \ 'name' : '替换插入' ,
    " \ 'A1      ~' : '修改光标下字符的大小写' ,
    " \ 'A2      r' : '替换当前光标下的字符' ,
    " \ 'A3      R' : '替换模式' ,
    " \ 'A4     xp' : '交换光标和下一个字符' ,
    " \ 'A5    c4l' : '删除当前光标向右四个字符并进入插入模式' ,
    " \ 'A6    ciw' : '删除当前词并进入插入模式' ,
    " \ 'A7   c$,C' : '删除当前光标至行尾并进入插入模式' ,
    " \ }
" 
" let g:which_key_map[1]['O'] = {
    " \ 'name' : '复制,撤销,查找,其它' ,
    " \ 'A1        u' : '撤销-撤销' ,
    " \ 'A2        J' : '行合并' ,  
    " \ 'A3        y' : '复制' ,  
    " \ 'A4       yw' : '复制当前单词' ,
    " \ 'A5       yy' : '复制行' ,
    " \ 'A6   Ctrl+r' : '将原来的插销重做一遍' ,
    " \ 'A7      /,?' : '正向查找,反向查找' ,
    " \ 'A8   Ctrl+a' : '当前光标下数字+1' ,
    " \ 'A9   Ctrl+x' : '当前光标下数字-1' ,
    " \ }
" 
" autocmd FileType markdown let g:which_key_map['3'] = {
    " \ 'name' : '语  法 : MarkDown' ,
    " \ 'A1.       #' : '标题' ,
    " \ 'A2.       =' : '文本下方添加，等同一级标题' ,
    " \ 'A3.       _' : '文本下方添加，等同二级标题' ,
    " \ 'A4.    ****' : '加粗' ,
    " \ 'A5.      **' : '斜体' ,
    " \ 'A6.  ******' : '粗斜体' ,
    " \ 'A7.    ~~~~' : '删除线' ,
    " \ 'A8.       >' : '引用' ,
    " \ 'A9.     ---' : '分割线' ,
    " \ 'B0.     ***' : '分割线' ,
    " \ 'B1.     ___' : '分割线' ,
    " \ 'B2.   ![]()' : '插入图片' ,
    " \ 'B3.    []()' : '超链接' ,
    " \ 'B4.   -,+,*' : '无序列表' ,
    " \ 'B5.      1.' : '有序列表(数字加.)' ,
    " \ 'B6.      ||' : '表格' ,
    " \ 'B7.      ``' : '代码' ,
    " \ 'B8.  ``````' : '代码块' ,
    " \ 'B9.  &nbsp;' : '缩进1/4中文' ,
    " \ 'C0.  &ensp;' : '缩进半个中文，一个字符' ,
    " \ 'C1.  &emsp;' : '缩进一个中文，2个字符' ,
    " \ 'C2.    换行' : '₁<br>₂连续2空格+回车' ,
    " \ }
" 
" autocmd FileType markdown let g:which_key_map['4'] = {
    " \ 'name' : '快捷键 : MarkDown' ,
    " \ 'A1.   `1' : '一级标题(1-6)' ,
    " \ 'A2.   `*' : '斜体' ,
    " \ 'A3.   `b' : '黑体' ,
    " \ 'A4.   ``' : '代码框' ,
    " \ 'A5.   `c' : '代码块' ,
    " \ 'A6.   `l' : '分割线' ,
    " \ 'A7.   `=' : '===' ,
    " \ 'A8.   `-' : '---' ,
    " \ 'A9.   `~' : '删除线' ,
    " \ 'B1.   `p' : '插入图片' ,
    " \ 'B2.   `i' : '<++>占位符' ,
    " \ 'B3.   `<' : '寻找下一个占位符' ,
    " \ 'B4.   `j' : 'HTML<img>标签' ,
    " \ }
" 
" autocmd FileType python let g:which_key_map['3'] = {
    " \ 'name' : '快捷键 : Python' ,
    " \ 'A1.    leader+r' : '运行python代码' ,
    " \ 'A2.    leader+b' : 'black代码格式化' ,
    " \ 'A3.    leader+d' : '代码跳转' ,
    " \ 'A4.    leader+f' : '当前光标下对象的所有引用位置' ,
    " \ 'A5.    leader+i' : '重命名当前光标下的对象,在所有位置' ,
    " \ 'A6.    leader+I' : '保留且重命名当前光标下的对象,在所有位' ,
    " \ 'A7.  Ctrl+Space' : '代码补全' ,
    " \ 'A8.          `<' : '寻找下一个<++>' ,
    " \ 'A9.          `(' : '()<++>' ,
    " \ 'B1.          `[' : '[]<++>' ,
    " \ 'B2.          `{' : '{}<++>' ,
    " \ 'B3.          `"' : '""<++>' ,
    " \ "B4.          `'" : "''<++>" ,
    " \ }




" ===
" ===vim-which-key 按键映射
" ===

" let g:maplocalleader = ','

" nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
" nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
" let g:mapleader = "\<Space>"

call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :WhichKey '<Leader>'<CR>

" 针对特定的模式，n模式
" call which_key#register('<Space>', "g:which_key_map", 'n')
" 
" 示例
" let g:which_key_map_w={'1':'2'}
" call which_key#register('a', "g:which_key_map_w")
" nnoremap <silent> <localleader> :WhichKey  'a'<CR>

