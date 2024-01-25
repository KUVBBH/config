" 使用powerline 打过补丁的字体
let g:airline_powerline_fonts = 1

" 开启状态栏
let g:airline#extensions#tabline#enabled = 1

" 显示 buffer 编
let g:airline#extensions#tabline#buffer_nr_show = 1

" 启用 ALE（Asynchronous Lint Engine）集成。ALE 是一个 Vim插件，用于异步语法检查和错误提示。与 Airline集成后，可以在状态栏上实时展示代码的 lint 结果或错误信息。
let g:airline#extensions#ale#enabled = 1
