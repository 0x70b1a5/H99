-- Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

data NumberedElem a = One a | Many Int a
  deriving Show

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x : takeWhile (x ==) xs) : (pack (dropWhile (x ==) xs))

toNumElem :: [a] -> NumberedElem a
toNumElem (e:[]) = One e
toNumElem es = Many (length es) (head es)

mencode :: (Eq a) => [a] -> [NumberedElem a]
mencode xs = [toNumElem x | x <- (pack xs)]


