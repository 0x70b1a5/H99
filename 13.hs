-- Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

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


