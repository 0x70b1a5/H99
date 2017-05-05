-- Rotate a list N places to the left.

rotate :: [a] -> Int -> [a]
rotate xs n = (drop i xs) ++ (take i xs)
  where i = mod n (length xs)
