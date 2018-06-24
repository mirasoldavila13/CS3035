-- Create three function sof your choice starting with a type declaration

num :: (Num a) => a -> a -> a --one function
num x y = x + y

characters :: (Integral d) => d -> String --second function
characters 1 = "Hai"
characters 2 = "Hello Cat"

numeroUno :: (a,b) -> a  -- third function 
numeroUno (x, _ ) = x

numeroDos :: (a, b) -> b
numeroDos (_,y) = y





-- Create a function that takes in a typeclas of Num and returns a typeclass of Num(include type declaration) that adds two numbers together
addNumbers :: (Num a) => a -> a ->a 
addNumbers x y = x + y

-- Create a function (with type declaration) that takes a String representation of a floating point number and adds it to an float


--Create a function(with type delcarations) that takes ins, and if the number is 1, 2, or 3 outputs the strings "once", "twice", "thrice"; if its greater than 3, prints "Don't know how to say that in english"

name :: (Integral b) => b -> String
name 1 = "Once"
name 2 = "Twice"
name 3 = "Thrice"
name x = "Don't know how to say this in english lol"


-- create 4 functions that take quadruples of any type. The first functionr eturns the first element, the second element and so on

firstQuadruple :: (a,b,c, d) -> a
firstQuadruple (w, _ , _, _) = w

secondQuadruple :: (a, b, c, d) -> b
secondQuadruple (_,x , _ , _) = x

thirdQuadruple  :: (a, b, c, d) -> c
thirdQuadruple (_, _ ,y, _ ) = y

fourthQuadruple :: (a, b, c, d) ->d
fourthQuadruple (_,_,_,z) = z

-- Create a recursive function with type declaration that takes in an Int and an exponent (also Int) and returns the first number raised to the second.

pow :: Int -> Int -> Int
pow a b = a ^ b

--Using list pattern matching, create a function that multiplies the first three elements of a list  of Ints (or all the elements, if the list has 3 or less elements, 0 if the list is empty) added together. Include type declaration.
--      (:
elements :: (Num a) => [a] -> a
elements [] = 0
elements (a:[]) = a
elements (a:b:[]) = a * b 
elements (a:b:c:_) = a * b * c

