-- Converts integer input into a list
toDigits :: Integer -> [Integer]
toDigits n =
  if n < 1
    then []
    else n `mod` 10 : toDigits (n `div` 10)

-- Doubles list's second last integers from the right
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther (o : t : r) = o : t * 2 : doubleEveryOther r

-- Sums all integer elements in a list
sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits xs =
  if x > 9
    then (x - 9) + sumDigits (tail xs)
    else x + sumDigits (tail xs)
  where
    x = head xs

-- Validates card number using previous defined functions
validate :: Integer -> Bool
validate n = sumDigits (doubleEveryOther (toDigits n)) `mod` 10 == 0

-- altMap
altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap f _ [x] = [f (head [x])]
altMap f g xs = f (head xs) : g (xs !! 1) : altMap f g (drop 2 xs)

-- doubleEveryOther using altMap
doubleEveryOther' :: [Integer] -> [Integer]
doubleEveryOther' = altMap (* 1) (* 2)