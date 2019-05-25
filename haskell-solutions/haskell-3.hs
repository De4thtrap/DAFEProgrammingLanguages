pal :: String -> Bool
pal [] = True
pal [x] = True
pal (x:xs)
   | x == last xs = pal ( init xs)
   | otherwise = False
