{--4pts: Write a Haskell program named getbmi.hs. It will ask the user to input weight in pounds (not kg, you have to convert to kg later) and inches (again, non metric). Perform any conversions needed, calculate BMI, then print the BMI, along with the string messages of the earlier BMI functions we wrote in lecture ("You're normal", etc.) depending on the BMI number.--}

--import Data.List
--import System.IO
{-# Language ScopedTypeVariables #-}


--    


--getbmi = do{
--           putStrLn "Hello, input your weight"
--            input <- bmiTell
--            putStrLn $
--            }
--      
--bmiTell :: Float -> String 
--bmiTell bmi  
--    | bmi <= 18.5 = putStrLn "You're underweight"  
--    | bmi <= 25.0 = putStrLn "You're normal"  
--    | bmi <= 30.0 = putStrLn "You're overweight"  
--    | otherwise   = putStrLn "You're obese" 


main = do
        putStrLn "Hello, input your weight in pounds"
        weight :: Float <- readLn
        putStrLn "What is your height"
        height :: Float <- readLn
        putStrLn $ bmi weight height
        
bmi :: (RealFloat a) => a -> a -> String  
bmi weight height  
    | (weight * 0.45) /  ((height * 0.025) ^ 2) <= 18.5 = "You're underweight"  
    | (weight * 0.45) / ((height * 0.025) ^ 2) <= 25.0 = "You're supposedly normal"  
    | (weight * 0.45) / ((height * 0.025) ^ 2)<= 30.0 = "You're overweight"  
    | otherwise = "You're obese"  



        
    
    

    
    
    