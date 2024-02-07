function! GPBT(args=30)
    let g:GP_ARGS = a:args
    python3 << EOF
import vim
from random import randint, choice
from json import load
from os.path import expanduser

GP_ARGS = vim.eval("g:GP_ARGS").split()
GP_LEN = GP_ARGS[0]
GP_LEN = int(GP_LEN) if GP_LEN.isdigit() else 30
GP_LEN = 10000 if GP_LEN > 10000 else GP_LEN

with open(
    expanduser("~/.vim/config/.vim/myvimrc/data.json"),
    "r",
) as f:
    data = load(f)

a = data["famous"]
b = data["before"]
c = data["after"]
d = data["bosh"]

if len(GP_ARGS) == 2 :
    f = GP_ARGS[1].replace(" ", "")
else :
    f = choice(["世界", "宇宙", "和平", "童话", "魔法", "科技"])

def lorem():
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
    for i in range(len(buf)):
        line = buf[i]
        if 'gpbt' in line :
            buf[i] = line.replace('gpbt',lorem())
XiuGai()
EOF
endfunction

command! -nargs=? Fh :call GPBT(<f-args>)
