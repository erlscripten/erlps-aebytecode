module Main where

import Data.Traversable
import System.Directory
import System.FilePath
import System.Environment

main :: IO ()
main = do
  files <- fmap concat $ getArgs >>= traverse (\d -> fmap (d </>) <$> listDirectory d)
  putStrLn "{"
  forM files $ \filePath -> do
    putStr "\"" >> putStr filePath >> putStrLn "\":"
    readFile filePath >>= print
    putStr ","
  putStrLn "null:null}"
    
