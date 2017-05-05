-- Drop every Nth element from a list.

dropNth :: (Eq a) => [a] -> Int -> [a]
dropNth [] _ = []
dropNth xs n = go xs n 1
  where go (l:ls) n i 
         | ls == [] = [l]
         | (mod i n) == 0 = go ls n 1
         | otherwise = l : (go ls n (i+1))

