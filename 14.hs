-- Duplicate the elements of a list.

dup :: [a] -> [a]
dup [] = []
dup (x:xs) = x : x : (dup xs)
