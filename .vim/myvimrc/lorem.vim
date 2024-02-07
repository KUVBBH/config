let g:cn_lorem=30
function! GPBT()
    python3 << EOF
import vim
from random import randint, choice
from json import load

def lorem():
    nn = int(vim.eval("g:cn_lorem"))
    with open(
        "/data/data/com.termux/files/home/.vim/config/.vim/myvimrc/data.json",
        "r",
    ) as f:
        data = load(f)
    a = data["famous"]
    b = data["before"]
    c = data["after"]
    d = data["bosh"]
    f = choice(["世界", "宇宙", "和平", "童话", "魔法", "科技"])
    e = choice(d)
    while len(e) < nn:
        if randint(0, 10) < 2:
            x = choice(a)
            x = x.replace("a", choice(b))
            e += x.replace("b", choice(c))
        else:
            e += choice(d)
        e = e.replace(" ", "")
        e = e.replace("x", f)
    e = e.replace(" ", "")
    e = e.replace("x", f)
    e = e.replace(",", "，")
    e = e.replace(".", "。")
    return e

def xg() :
    buf = vim.current.buffer
    nowLineNumber = vim.current.window.cursor[0] - 1
    line = buf[nowLineNumber]
    if 'gpbt' in line :
        buf[nowLineNumber] = line.replace('gpbt',lorem())
    else :
        return
xg()
EOF
endfunction

command! -nargs=0 Gpbt :call GPBT()

map <LEADER>l :Gpbt<CR>
