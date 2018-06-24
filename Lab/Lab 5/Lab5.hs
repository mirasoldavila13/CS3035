--4 pts) Implement a search algorithm that searches through a list for Int n and returns the value in the list after n. If there is no value, or the list is empty, return -1. E.g., findNext 5 [1,2,3,4,5,6] should return 6, while findNext 5 [0, 10, 20, 30] returns -1.

nextElement :: Int -> [Int] -> Int
nextElement a [] = -1
nextElement a (b:c:cs) 
    | a == b = c 
    | otherwise = nextElement a (c:cs)
    
    
    

--2 pts) Implement a search algorithm that searches through a list for Int n and returns the value in the list before n. If there is no value, or the list is empty, return -1. E.g., findPrev 5 [1,2,3,4,5,6] should return 4, while findPrev 5 [0, 10, 20, 30] returns -1.

prevElement :: Int -> [Int] -> Int
prevElement a [] = -1
prevElement a (b:c:cs) 
    | a == c = b
    | otherwise = prevElement a (c:cs)
    
--    
--4pts) Implement function that calculates a digit sum of an Int --- adds all the digits  of the int together, returning an Int. You can define a second helper function. At least`one`of your functions must u`e r`cursion.

addTotalNumber :: Int -> Int
addTotalNumber 0 = 0
addTotalNumber a = (a `mod` 10) + addTotalNumber (a `div` 10)