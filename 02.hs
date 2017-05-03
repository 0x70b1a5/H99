-- Find the second-to-last element of a list.

slast :: [a] -> a
slast (x0:_:[]) = x0
slast (x0:_:xs) = slast xs

