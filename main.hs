--Palindrome Checker
import Data.Char(toLower) -- to make everything in the string lowercase

main = do
 putStrLn ("Enter a word or letter to check if it's a palindrome")
 putStrLn (" ")
 input <- getLine
 putStrLn $ checkPal input



checkPal :: String -> String
checkPal [] = ("That's an Empty String.. but okay it's the same forwards and backward")
checkPal x | y /= rev  = (x ++ " is not a palindrome")
           | otherwise = (x ++ " is a palindrome")
            where 
             y   = map toLower $ words2 x 
             rev = reverse y


-- The words2 is required for sentences in which the spaces, and commas are not in the same position backwards. This should solve the problem "Never odd or even";)
words2 :: String -> String
words2 [] = []
words2 (x:xs) | x == ' ' || x == ',' = words2 xs
              | otherwise = x: words2 xs


{-

We can also do something like this to directly call the IO() Monad, but I prefer the functional thing..


checkPal2 :: String -> IO ()
checkPal2 [] = putStrLn ("That's an Empty String.. but okay it's the same forwards and backward")
checkPal2 x | y /= rev  = putStrLn (x ++ " is not a palindrome")
           | otherwise = putStrLn (x ++ " is a palindrome")
            where 
             y   = map toLower $ words2 x
             rev = reverse y

-}
