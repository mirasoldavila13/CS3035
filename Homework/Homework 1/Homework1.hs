--4 pts) Write a recursive method to compute m(i) = 1 + 1/2 + 1/3, ... + 1/i, where i is an Int
--
--Note: you can use fromIntegral for operations involving both ints and floats for any of the problems.
--

m :: Int -> Float
m  1 = 1
m  x  = (fromIntegral 1 / fromIntegral x) + m(x-1)

--if(n == 1){ //I wrote this for 203 (:
--			return 1;
--		}
--		else{
--			return 1/n + harmonicSum(n - 1);
--		}
--
--		}

--4 pts) Write a recursive method to compute m(i) = 1/2, + 2/3, ... + i/(i + 1), where i is an Int

m2 :: Int -> Float
m2  0 = 0
m2  x  =  fromIntegral x / (fromIntegral x + 1) + m2(x-1)

--4 pts) Using recursion, implement a method that removes the max element from a list of Ints, or one of the max elements if there is more than one. E.g., [1,2,3,4,4] should become [1,2,3,4]

-- Have to remove the maximum and if there is a duplicate, we gotta remove that too.......

--maximum' :: [Int] -> Int
--maximum' [x] = x
--maximum' (x:xs)
-- | (maximum' xs) > x = maximum'  xs
-- | otherwise =  x
 
--dup :: [Int] -> [Int]
--dup [] = []
--dup (x:xs) = x : (dup (remove x xs))
--    where
--        remove :: Int -> [Int] -> [Int]
--        remove x [] = []
--        remove x (y:ys)
--         |x == y = remove x ys -- This works
--         | otherwise = y : (remove x ys) -- and this works
--           |(remove ys) > x = remove ys -- doesn't work
--           | otherwise = y: (remove x ys) -- doesn't work
--           | x > y = remove x ys -- doesn't work
--           | otherwise = y: (remove x ys) -- doesn't work * sigh*
--           
           
list :: (Ord a) => [a] -> [a]           
list (x:xs) =
 list (maxList x xs) [] (x:xs)
  where
    maxList :: (Ord a) => a -> [a] -> a
    maxList m [] = m
    maxList m (x:xs) -- we have to check the entire list of elements and compare them
      | x > m = maxList x xs 
      | otherwise = maxList m xs
    list m n (x:xs) 
      | m == x = n ++ xs 
      | otherwise = list m (n ++ [x]) xs 




            
--8 pts) Implement a sorting algorithm that finds the max, puts it at the end of the list, then recursively sorts the remainder of the list. You can create/use any helper functions you need, provide that you wrote it yourself, or it's built into Haskell.

-- this is an infinite loop - doesn't work
--sortList :: [Int] -> [Int]
--sortList [] = []
--sortList (x:xs) = x : (sortList (li x xs))
--    where
--        li :: Int -> [Int] -> [Int]
--        li x [] = []
--        li x (y:ys)
--            | x < y = x:y:ys
--            | otherwise = y:li x ys

-- 

       


{--[1,3,2,2,4,5] 
1 < 3 returns [1,3,2,2,4,5]
3 < 2 is false returns [1,2,3,2,4,5
3 < 2 is false returns [1,2,2,3,4,5]
3 < 4 returns [1,2,2,3,4,5]
4 < 5 returns [1,2,2,3,4,5]
--}


sortList :: [Int] -> [Int]
sortList [] = []
sortList (x:xs) = li x (sortList xs)

li :: Int -> [Int] -> [Int]
li m [] = [m]
li m (y:ys)
    | m < y = m:y:ys
    | otherwise = y:li m ys



    

    
    
    
    
    
    
    
    
    
    
    
    