from os import system
from sys import argv

m = argv[1]
print(argv)
if m == "stop":
    system('pgrep -f "python -m http.server" | xargs kill')
elif m == "dir":
    dname = argv[2]
    system(f"nohup python -m http.server 43960 --directory {dname} > /dev/null 2>&1 &")
    system('am start -a android.intent.action.VIEW -d "http://localhost:43960"')
elif m == "file":
    dname = argv[2]
    fname = argv[3]
    system(f"nohup python -m http.server 43960 --directory {dname} > /dev/null 2>&1 &")
    system(
        f'am start -a android.intent.action.VIEW -d "http://localhost:43960/{fname}"'
    )
