mymax (x,y) | x < y = y
            | x == y = x
            | otherwise = x


maxlen (x:xs) | length(xs) > 0 = mymax(mymax(length x, length(head xs)), maxlen xs)
              | otherwise = 1


find (len,(s:str)) | length s == len = s
                 | otherwise = find(len,str)

task str = find(maxlen(str),str
