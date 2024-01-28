from os import system
from sys import argv

# system('nohup python -m http.server --directory /storage/emulated/0/Download  8000 > /dev/null 2>&1 &')

if len(argv) == 1:
    system("nohup python -m http.server 8000 > /dev/null 2>&1 &")
    system('am start -a android.intent.action.VIEW -d "http://localhost:8000"')
else:
    system('pgrep -f "python -m http.server" | xargs kill')
