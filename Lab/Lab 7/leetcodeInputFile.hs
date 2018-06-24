--4pts: Write a Haskell program that inputs a file (the file path is hardcoded in your program for now) and does the same thing with the text as the previous problem, but instead of printing to the screen, it prints it to a file called leet.txt, in the same directory as the original file. 

import Data.Char
main = do
        putStrLn "Enter a phrase"
        input   <- getLine   
        writeFile "leet.txt" (userPhrase input)
        --putStr "Successful\n"

userPhrase  :: String -> String
userPhrase [] = []
userPhrase (x:xs) 
     |x == 'o' = '0' : userPhrase xs
     |x == 'e' = '3' : userPhrase xs
     |x == 'a' = '@' : userPhrase xs
     |x == 'l' = '1' : userPhrase xs
     |otherwise = x  : userPhrase xs
    

