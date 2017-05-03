-- Find the last element of a list.

_last :: [a] -> a
_last (x:[]) = x
_last (x:xs) = last xs
