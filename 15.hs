-- Replicate the elements of a list N times.

rep :: [a] -> Int -> [a]
rep [] _ = []
rep (x:xs) n
  | n == 1 = x : xs
  | n < 1 = []
  | otherwise = x : (rep [x] (n-1)) ++ (rep xs n)
