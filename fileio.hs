{-# LANGUAGE BangPatterns #-}

import System.IO

mywrite text path = do
        file <- openFile path WriteMode
        hPutStrLn file text
        hClose file

myread path = do
        file <- openFile path ReadMode
        !contents <- hGetContents file 
        hClose file
        return contents

main = do
    mywrite "This is the content" "tmp"
    (myread "tmp") >>= putStrLn

-- Conclusion: IO is still way over my head
