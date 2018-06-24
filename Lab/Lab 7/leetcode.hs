{--  4pts: Write a Haskell program named leetcode. It asks for a phrase, and it converts all lowercase o's to 0, all lowercase e's to 3, all lowercase a's to @, and all lowercase l's to 1, and prints the result to the screen. --}
import Data.Char
main = do
        putStrLn "Enter a phrase"
        input   <- getLine
        putStrLn $ userPhrase input
--
userPhrase  :: String -> String
userPhrase [] = []
userPhrase (x:xs) 
     |x == 'o' = '0' : userPhrase xs
     |x == 'e' = '3' : userPhrase xs
     |x == 'a' = '@' : userPhrase xs
     |x == 'l' = '1' : userPhrase xs
     |otherwise = x  : userPhrase xs
    


--
--
--


    

    
    
    