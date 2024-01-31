" 模板
map <LEADER>! :.-1read ~/.vim/config/.vim/myvimrc/keymap/模板.html<CR>8jA

" 寻找下一个锚点
inoremap `< <Esc>/<++><CR>:nohlsearch<CR>c4l

" <!---->   注释
inoremap `# <!--  --><Enter><++><Esc>k$F!3la

" <h>   标题
inoremap `h1 <h1></h1><Enter><++><Esc>k$F/hi
inoremap `h2 <h2></h2><Enter><++><Esc>k$F/hi
inoremap `h3 <h3></h3><Enter><++><Esc>k$F/hi
inoremap `h4 <h4></h4><Enter><++><Esc>k$F/hi
inoremap `h5 <h5></h5><Enter><++><Esc>k$F/hi
inoremap `h6 <h6></h6><Enter><++><Esc>k$F/hi

" <a href>  超链接
inoremap `aa <a href="https://"><++></a><++><Esc>2F/a
inoremap `ab <a href="https://" target="_blank"><++></a><++><Esc>2F/a
inoremap `am <a href="mailto:"><++></a><++><Esc>F:a
inoremap `at <a href="tel:"><++></a><++><Esc>F:a

" <br>  换行
inoremap `<Space> <br>
