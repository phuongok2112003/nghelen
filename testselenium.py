from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.service import Service
import random
import webbrowser as wb
from time import sleep
import autoit
import os
import datetime
# import win32com.client
from selenium.webdriver.chrome.options import Options
tkhoan=str(os.getcwd())+"/nghelen/tk"
chrome_option = Options()
# chrome_option.add_argument("--headless")

chrome_option.add_argument("user-data-dir="+tkhoan)

service=Service()
br = webdriver.Chrome(service=service,options=chrome_option)
br.get("https://www.google.com/intl/vi/gmail/about/")

# autoit.win_wait_active("Gmail - Google Chrome")
# autoit.win_minimize_all()




dangnhap=br.find_element(By.XPATH,"/html/body/header/div/div/div/a[2]")
dangnhap.click()
sleep(3)
try:
    email=br.find_element(By.XPATH,"/html/body/div[1]/div[1]/div[2]/div/c-wiz/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div/div[1]/div/div[1]/input")
    email.click()
    sleep(2)
    email.send_keys("dungnguvl2003@gmail.com")

    email.send_keys(Keys.ENTER)
    sleep(2)

    matkhau=br.find_element(By.XPATH,"/html/body/div[1]/div[1]/div[2]/div/c-wiz/div/div[2]/div/div[1]/div/form/span/section[2]/div/div/div[1]/div[1]/div/div/div/div/div[1]/div/div[1]/input")
    matkhau.click()
    sleep(3)
    matkhau.send_keys("toiyeudung2k3")
    matkhau.send_keys(Keys.ENTER)
    sleep(5)
except:
    pass
br.get("https://mail.google.com/mail/u/3/#inbox")
soanthu=br.find_element(By.XPATH,"/html/body/div[7]/div[3]/div/div[2]/div[1]/div[1]/div/div")
soanthu.click()
sleep(3)
xx="agP"
nguoigui=br.find_element(By.CLASS_NAME,xx)
nguoigui.click()
# sleep(3)
nguoigui.send_keys("phuong0961070156@gmail.com")
nguoigui.send_keys(Keys.ENTER)

cc="aoT"
tieude=br.find_element(By.CLASS_NAME,cc)
tieude.click()
# sleep(4)

    
ngay_gio_hien_tai = datetime.datetime.now()
tieude.send_keys(str(ngay_gio_hien_tai))

data=""
duong_dan=str(os.getcwd())+"/nghelen/content.txt"
if os.path.exists(duong_dan):
    with open(duong_dan, "r") as file:
        # Đọc nội dung tệp và lưu vào biến data
        data = file.read()

    # vl="Am Al editable LW-avf tS-tW"
    noidung=br.find_element(By.CLASS_NAME,"Am")
    noidung.click()
    noidung.send_keys(data)

    # os.remove(duong_dan)





# yy="a1"
# tep=br.find_element(By.CLASS_NAME,yy)
# tep.click()

# autoit.win_wait_active("Open")
# ur="D:\\bungno\\ve_que\\317796787_550768296440532_5333906884633506543_n.jpg"
# autoit.control_set_text("Open","Edit1",ur)
# autoit.control_click("Open","Button1")
# autoit.win_close("Open")

sleep(3)

zz="aoO"
post=br.find_element(By.CLASS_NAME,zz)
post.click()


sleep(3)
br.close()

