module Main where

import Control.Monad
import System.Directory
import System.FilePath

asmDir :: FilePath
asmDir = "aebytecode/test/asm_code"

main :: IO ()
main = do
  putStrLn "{"
  files <- fmap (asmDir </>) <$> listDirectory asmDir
  forM_ files $ \filePath -> do
    putStr "\"" >> putStr filePath >> putStrLn "\":"
    readFile filePath >>= print
    putStr ","
  putStrLn "\"/\":null}"
    
