" imap , `


" 模板
map <LEADER>! :.-1read ~/.vim/config/.vim/myvimrc/keymap/模板.html<CR>8jA


" 寻找上,下一个锚点
inoremap `> <Esc>?<++><CR>:nohlsearch<CR>c4l
inoremap `< <Esc>/<++><CR>:nohlsearch<CR>c4l


" <!---->   注释
inoremap `# <!--  --><++><Esc>F!3la


" <h>   标题
" inoremap `h1 <h1></h1><Enter><++><Esc>k$F/hi
for N in range(1,6)
    execute $"inoremap `h{N} <h{N}></h{N}><Enter><++><Esc>k$F/hi"
endfor


" <a href>  超链接
inoremap `aa <a href="https://"><++></a><++><Esc>2F/a
inoremap `ab <a href="https://" target="_blank"><++></a><++><Esc>2F/a
inoremap `am <a href="mailto:"><++></a><++><Esc>F:a
inoremap `at <a href="tel:"><++></a><++><Esc>F:a
inoremap `ad <a href="" download="<++>"><++></a><++><Esc>2F=la


" <br>  换行
inoremap `<Space> <br>

