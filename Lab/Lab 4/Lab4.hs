--Guards
--
--2 pts) Write a function named generation using guards that takes in an integer representing a person's birth year and returns which generation they belong to:
--
--If the person was born after 1995, they are "Generation Z". Else if the person was born after 1980, they are "Millennial". Else if they were born after 1965 they are "Generation X". Else if they were born after 1945 they are "Baby Boomer". Else if they were born after 1933 they are "The Silent Generation". Otherwise they are "The Greatest Generation". 
--
generation :: Integer => Integer -> String
generation age
    | age > 1995 = "You're Generation Z"
    | age > 1980 = "You're Millennial"
    | age > 1965 = "You're Generation X"
    | age > 1945 = "You're Baby Boomer"
    | age > 1933 = "You're the silent generation"
    | otherwise   = "You're the greatest generation"


--Where
--
--2 pts) Write a function just like the above named generation2, except the input is a person's age in years. The guards check a variable that has the birth year of the person and assigns them to generations as indicated above, but at the end there is a where clause that converts the age to the birth year.
--
generation2 :: Integer -> String
generation2 age
    | age > a = "You're Generation Z"
    | age > b = "You're Millennial"
    | age > c = "You're Generation X"
    | age > d = "You're Baby Boomer"
    | age > e = "You're the silent generation"
    | otherwise   = "You're the greatest generation"
    
    where  (a,b,c,d,e) =(1995, 1980,1065,1945,1933)

--
--2 pts) Write a function that takes in a list of 2-place tuples of floats (that represent two smaller sides of a right triangle) and converts it to its corresponding hypotenuse. Use a function definition in a where clause. Btw, to get the square root of a float, use sqrt function.



--Let
--
----2 pts) Complete a function that takes an Float a and a list of Floats. Use list comprehension
--to multiply each value in the list by pi * a. Use let to get p*a. 


--Case
--
--2 pts) Take this function: 
--
--Using list pattern matching, create a function that multiplies the first three elements of a list  of Ints (or all the elements, if the list has 3 or less elements, 0 if the list is empty) and returns the product. 
--

element :: (Num a) => [a] -> a 
element x = case x of [] -> 0 
                      (x:_) -> x
                      (x:y:[]) -> x * y
                      (x:y:z:_) -> x * y * z
                      
                      
                      
