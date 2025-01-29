{-# LANGUAGE FlexibleContexts #-}

module Main where

import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  print (sort xs) 

  let ys = [(1, "a"), (2, "b"), (3, "c")]
  print (sort ys) 

instance Ord a => Ord (a, b) where
  (x, _) <= (y, _) = x <= y
-- A more robust solution would consider the second element as well:
instance (Ord a, Ord b) => Ord (a, b) where
  (x, y) <= (x', y') = x <= x' || (x == x' && y <= y') 