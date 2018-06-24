--1. 2pts) Create a function, using partial application of functions, that sees if a single Int is divisible by 5. It takes in an Int and returns a Bool. (edited from original to be a bit easier)

--
--ft :: Int -> Bool
--ft x
--   | x `div` 5 == 0 = True
--   | otherwise = False
   
   
f :: (Int -> Bool)
f n
    | n `mod` 5 == 0 = True
    | otherwise = False

--2. 2pts) Write a function that checks if every other letter of a string is between 'a' and 'f' (the remaining letters don't matter, start with the first letter in the string, skip the second, and so on). The function takes in a String and returns a Bool. Use partial application at least once. Empty string returns True. (edited to specify what empty string returns, some clarification added). 1, 3, 5, 7, 9 -> it's checking every odd , would have to filter it for every odd
--
l :: (String -> Bool)
l " " = True
l [x] = (`elem` ['a' .. 'f']) x
l (x:y:xs)
    | (`elem` ['a' .. 'f']) x = l xs
    | otherwise = False



--3. 4pts) Write a function that takes two lists, zips them, then maps the result to a list of sums of the numbers in the tuples. E.g., [1, 2, 3] [4, 5, 6] gets zipped to [(1, 4), (2, 5), (3,6)], then gets mapped to [5, 7, 9].

--zip' :: [a] -> [b] -> [(a,b)]
--zip' _ [] = []
--zip' [] _ = []
--zip' (x:xs) (y:ys) = (x, y):zip' xs ys
--  where map (\(x,y) -> x + y)(zip'x y) {-- how do I combine this?? comback to this --}

list :: [Int] -> [Int] -> [Int]
list x y = map(\(x,y) -> x + y) (zip x y)






--4. 4pts) Write a function that maps a list of Strings that may have multiple words to Strings with only the first word left. E.g. ["Today is Thursday", "Banquet", "unreal games"] becomes ["Today", "Banquet", "unreal"].

mword :: [String] -> [String]
mword x = map head (map words x)


--5. 4pts) Write a function that takes a two dimensional matrix of Strings and transforms all empty strings to "0". 

dim :: [String] -> [Int]
dim xss = map f xss
          where f xs 
                   |xs == " " = 0
                   |otherwise = 1
            
--6. 4pts) Write a function that converts [a, b, c, d, . . . ] to [(a,b), (c, d), . . .], where a, b, c, and d can be any type.
--anyt :: [a] -> [a] -> ([(a,b])])
-- zip, map


--three:: [a -> b -> c -> d] -> [(a,b) -> (c,d)] -- doesn't work
--three (a:b:c) = (a, b): three c


--7. 2pts) Using the previous function, convert each tuple to a product of its two elements, using foldl and a lambda expression.



--8. 1pt) Using scanl, write a function that takes a list of Ints and make a list of cumulative sums. 
summ :: [Int] -> [Int]
summ (x:xs) = scanl (+) x xs
--

--9. 1pt) Consider this function:
--
--applyThrice :: (Int -> Int) -> Int -> Int
--applyThrice f x = f (f (f x))

applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x = f $ f $ f x

--Use $ to make the second line more readable

--10. 2pts) Convert:
--
--to point free style
--
isLowerCase :: Char -> Bool
isLowerCase  =  (`elem` ['a' .. 'z'])


--11. 4pts) Sort a list of Strings by length of the first word in the strings (if the strings have more than one word)

stringLength:: [String] -> [String]
stringLength a = sort(map (\x->(length(head x), x)) (map words a)) [] 0
    where
        sort :: [ (Int, [String] )] -> [ (Int, [String] )] -> Int -> [String]
        sort [] st i = map(\(x,y) -> unwords y ) st
        sort lst st i = sort( (filter (\(x,y) -> x/=i) ) lst) (st++(filter (\(x,y) -> x == i) lst)) (i + 1)

--12. 5pts) Pack repeats in a list of Chars into separate lists, resulting in a sorted list of lists: E.g., 




