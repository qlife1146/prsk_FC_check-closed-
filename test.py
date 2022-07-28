f_quote = '"'
e_quote = '"'
for i in range(1, 20):
    result = ''
    tmp = ''
    for j in range(1, 34):
        tmp = ''
        if i < 10:
            iSet = "0" + str(i)
        else:
            iSet = str(i)
        if j < 10:
            jSet = "0" + str(j)
        else:
            jSet = str(j)
            
        tmp = "_" + iSet + jSet + " "
        result = result + tmp
        
    print(result)