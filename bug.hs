{-# LANGUAGE FlexibleContexts #-}

module Main where

import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  print (sort xs) -- This works fine

  let ys = [(1, "a"), (2, "b"), (3, "c")]
  print (sort ys) -- This throws an error because tuples are not instances of Ord by default

-- To fix this, you need to define an instance of Ord for the tuple type:
instance Ord a => Ord (a, b) where
  (x, _) <= (y, _) = x <= y