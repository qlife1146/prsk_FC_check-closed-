from ast import Try
from urllib import response
from warnings import catch_warnings
from PIL import Image
import os
import urllib.request

# "https://minio.dnaroma.eu/sekai-assets/music/jacket/jacket_s_004_rip/jacket_s_004.webp")

max = 300
i = 0
while i < max:
  i += 1
  print(i,"/",max)
  #번호 관리
  if i < 10:
      url_i = ("00" + str(i))
  elif i > 9 and i < 100:
      url_i = ("0" + str(i))
  else:
      url_i = str(i)

    #이미지 url
  url = "https://minio.dnaroma.eu/sekai-assets/music/jacket/jacket_s_" + url_i + "_rip/jacket_s_" + url_i + ".webp"
  
  if os.path.exists("/Users/luca/vscode/html/prsk_FC_check/prsk/img/" + url_i + ".webp"):
    continue
  else:
    #이미지 다운로드
    os.system("curl " + url + " > /Users/luca/vscode/html/prsk_FC_check/prsk/img/" + url_i + ".webp")
    img_size = os.path.getsize(r'/Users/luca/vscode/html/prsk_FC_check/prsk/img/' + url_i + ".webp")
    if img_size < 400:
      os.remove('/Users/luca/vscode/html/prsk_FC_check/prsk/img/' + url_i + ".webp")