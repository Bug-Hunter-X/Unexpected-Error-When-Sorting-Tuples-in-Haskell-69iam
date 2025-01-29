# Haskell Tuple Sorting Bug

This repository demonstrates a common error encountered in Haskell when sorting tuples.  The `sort` function from `Data.List` requires the elements to be instances of the `Ord` typeclass, but tuples are not automatically instances of `Ord`. The provided code illustrates this issue and offers a solution.

## How to Reproduce

1.  Clone the repository.
2.  Compile and run `bug.hs`.
3.  Observe the compilation error.