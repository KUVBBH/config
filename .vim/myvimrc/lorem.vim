function! GPBT()
    python3 << EOF
import vim
from random import randint, choice
from json import load
from os.path import expanduser
from re import finditer

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

def lorem(GP_LEN):
    e = choice(d).replace(" ", "")
    while len(e) < GP_LEN:
        if randint(0, 10) < 2:
            x = choice(a).replace(" ", "")
            x = x.replace("a", choice(b).replace(" ", ""))
            e += x.replace("b", choice(c).replace(" ", ""))
        else:
            e += choice(d).replace(" ", "")
    e = e.replace("x", f)
    e = e.replace(",", "，")
    e = e.replace(".", "。")
    return e[:GP_LEN]

def XiuGai() :
    buf = vim.current.buffer
    # 从头开始
    startNumber = 0
    # 从光标所在行
    # startNumber = vim.current.window.cursor[0] - 1
    for i in range(startNumber, len(buf)):
        line = buf[i]
        find = [v.group() for v in finditer("gpbt\d*", line)]
        if not len(find) :
            continue
            # break
        for v in find :
            L = v[4:]
            L = 30 if not L else int(L)
            line = line.replace(v,lorem(L),1)
        buf[i] = line
XiuGai()
EOF
endfunction

command! -nargs=0 GouPiBuTong :call GPBT()
" command! -nargs=? Fh :call GPBT(<f-args>)
