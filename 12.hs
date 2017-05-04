-- Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

data NumberedElem a = One a | Many Int a
  deriving Show

fromNumElem :: NumberedElem a -> [a]
fromNumElem (One e) = [e] 
fromNumElem (Many i e) = replicate i e

decode :: [NumberedElem a] -> [a]
decode = concatMap fromNumElem
