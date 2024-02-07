function! GPBT(arg=30)
    let g:cn_lorem = a:arg
    python3 << EOF
import vim
from random import randint, choice
from json import load
from os.path import expanduser

def lorem():
    nn = int(vim.eval("g:cn_lorem"))
    if nn > 10000:
        nn = 10000
    with open(
        expanduser("~/.vim/config/.vim/myvimrc/data.json"),
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
    for i in range(len(buf)):
        line = buf[i]
        if 'gpbt' in line :
            buf[i] = line.replace('gpbt',lorem())
xg()
EOF
endfunction

command! -nargs=? Fh :call GPBT(<f-args>)
