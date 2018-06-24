{-- Create a function that adds two Ints together. Then create a function, using the first, that adds a number to 10, using partial application.
--}


--numTen ::(Num a) -> a -> (a -> a)
--numTen x y = x + y 

--add :: Int -> (Int -> Int)
--add x y = x + y
--addn = add 10

addNumbers ::  Int -> (Int -> Int)
addNumbers x y = x + y + 10


{--Using partial application/currying, create a function that checks if a Char is a lowercase letter --}

--elmLowerCase :: (Char -> Bool) -> Char -> Bool
--elmLowerCase = (`elem` [`a`..`z`])


{-- Write a function that takes another function and an int and applies it 3 times--}
--listOf :: (a -> a )  -> a -> a 
--listOf f x = f  (f x)

--func :: (Int -> Int -> Int) -> Int -> Int -> Int
--func f x = f (f x) (f x)

funct :: (Int -> Int ) -> Int -> Int 
funct f x = f (f (f x))
 
 {--Using recursion, write a function that takes a function and a list of Ints, and applies the function to every other element in the list (applies to first, skips the second, and so on), and returns a new list with both the transformed and untransformed elements in place --}
-- 

-- recurList :: (Int -> Int ) -> [Int] -> [Int]
-- recurList f (x:xs)
 
 {--2pts) Write a function like zipWith, except that it takes 3 lists and a function that takes 3 parameters, and returns a list with the function applied to each corresponding element in the 3 lists --}
 
-- zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]  
--zipWith' _ [] _ = []  
--zipWith' _ _ [] = []  
--zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys 
 
zipWith3' :: (a -> b -> c -> d) -> [a] -> [b] -> [c] ->[d] 
zipWith3' _ [] _ _ = []
zipWith3' _ _ [] _ = []
zipWith3' _ _ _[] = []
zipWith3' f (x:xs) (y:ys) (z:zs) = f x y z : zipWith3' f xs ys zs





 {--2pts) Write a function that takes a function (Int -> Int) and an 
Int and returns (Int, Int), where the first element is the Int
without the function applied to it, and the second is the result  of 
applying the function to the Int. That is, if we call the function toTuple, toTuple (+3) 6 should return (6, 9) --}
--fil :: (Int -> Int) -> Int

tupf :: (Num a) => (a -> a) -> a -> (a, a)
tupf f x = (x, f x)

 {--2pts) Using map and the function you just wrote, write a function that takes 
a list of Ints and a function (Int -> Int) and returns 
a new list of tuples, with the 
first element being the original element, and the second being 
the result of the transformation.--}
