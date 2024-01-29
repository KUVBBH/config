from os import system
from os.path import isfile, expanduser
from sys import argv


if not len(argv[1:]):
    if isfile(f'{expanduser("~")}/.py_http_server.log'):
        system("mv ~/.py_http_server.log ~/.last_py_http_server.log")
    system("nohup python -m http.server 43960 > ~/.py_http_server.log 2>&1 &")
    system('am start -a android.intent.action.VIEW -d "http://localhost:43960"')
else:
    system('pgrep -f "python -m http.server" | xargs kill')
