import os
import cv2

path = './img'
os.chdir(path)
files = os.listdir(os.getcwd())
files.sort()
dir = os.getcwd()
print(dir)

for i in os.listdir('./'):
    path = './' + i
    color = cv2.imread(path, cv2.IMREAD_COLOR)
    cv2.imshow("image", color)
    cv2.waitKey(0)
