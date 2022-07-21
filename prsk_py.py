import os

dir = './img'
img_list = []
extension = ['.webp']

for (root, dirs, files) in os.walk(dir):
    if len(files) > 0:
        for file_name in files:
            if os.path.splitext(file_name)[1] in extension:
                img_path = root + '/' + file_name
                img_path = img_path.replace('\\', '/')
                img_list.append(img_path)

print(img_list)
