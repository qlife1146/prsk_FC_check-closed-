import os

path = './img/'
os.chdir(path)
files = os.listdir(path)

print(files)
