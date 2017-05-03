-- (*) Find the K'th element of a list. The first element in the list is number 1.

kthEl :: Int -> [a] -> a
kthEl _ [] = error "List index out of bounds"
kthEl k (x:xs)
    | k == 0 = x
    | k > 0 = kthEl (k-1) xs
    | otherwise = kthEl ((length xs) + k) xs -- added backwards lookup just because
