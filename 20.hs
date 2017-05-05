-- Remove the Nth element and return in a tuple with new list.

removeAt :: [a] -> Int -> (a,[a])
removeAt xs n = (xs !! i, (take i xs) ++ (drop n xs))
  where i = n-1
