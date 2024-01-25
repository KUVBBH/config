" 是否自动启动 1自动启动
let g:mkdp_auto_start = 1

" 样式
" let g:mkdp_markdown_css = expand('')

" 退出时自动关闭 1自动关闭
let g:mkdp_auto_close = 1

" 0快刷新 1慢刷新
let g:mkdp_refresh_slow =0

" 0命令只有在.md文件下生效 
let g:mkdp_command_for_global = 0

" 仅限本地访问
let g:mkdp_open_to_the_world = 0

" let g:mkdp_open_ip = ''

" 打开所用的浏览器
" let g:mkdp_browser = ''

" 0不显示服务器地址
let g:mkdp_echo_preview_url = 1

" `'mkit'`, `'katex'`, `'uml'`, `'maid'`: 分别对应不同的 Markdown 扩展支持，如
" mkit 提供额外的 Markdown 语法扩展支持，katex 支持 KaTeX 数学公式渲染，uml
" 支持 UML 图形渲染，maid 可能是提供更深入的 Markdown 属性解析。
" `'disable_sync_scroll': 0`：启用预览窗口与编辑窗口的同步滚动功能。
" `'sync_scroll_type': 'middle'`：同步滚动时，以两个窗口的中间点进行对齐。
" `'hide_yaml_meta': 1`：隐藏 Markdown 文件开头的 YAML 元数据。
" `'sequence_diagrams': {}` 和 `'flowchart_diagrams':
" {}`：分别支持序列图和流程图的渲染。
" `'content_editable': v:false`：关闭在预览页面直接编辑内容的功能。
" `'disable_filename': 0`：显示预览页面顶部的文件名，默认为开启。
" `'toc': {}`：配置目录（Table of
" Contents）相关选项。这里的空字典表示使用默认设置。
let g:mkdp_preview_options = {
    \ 'mkit': {},
   	\ 'katex': {},
   	\ 'uml': {},
   	\ 'maid': {},
   	\ 'disable_sync_scroll': 0,
   	\ 'sync_scroll_type': 'middle',
   	\ 'hide_yaml_meta': 1,
   	\ 'sequence_diagrams': {},
   	\ 'flowchart_diagrams': {},
   	\ 'content_editable': v:false,
   	\ 'disable_filename': 0,
   	\ 'toc': {}
    \ }

" 代码高亮样式
" let g:mkdp_highlight_css = ''

" 服务器端口
let g:mkdp_port = ''

" 当前文件名
let g:mkdp_page_title = '「${name}」'

" 图片路径
" let g:mkdp_images_path = /home/user/.markdown_images

" 文件类型
let g:mkdp_filetypes = ['markdown']

" 主题样式 dark or light
" let g:mkdp_theme = 'light'

" 当值为 `0`时，表示不启用预览窗口与编辑窗口的合并显示功能。这意味着预览窗口将会作为独立的窗口打开，与编辑Markdown 文件的窗口分开显示。
" 如果将此值设为`1`，则插件可能尝试将预览内容和编辑内容在一个窗口内垂直或水平分割显示，具体实现取决于插件的功能设计。通过开启这一选项，用户可以在同一窗口中同时查看和编辑Markdown 文档以及其实时预览效果。
let g:mkdp_combine_preview = 0

" 同步刷新
let g:mkdp_combine_preview_auto_refresh = 1

