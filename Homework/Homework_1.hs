-- Homework 1
-- 1.6 Task 4
{-
Integer division truncated toward zero.
rem :: a -> a -> a |infixl 7|

gcd x y is the non-negative factor of both x and y of which every common factor of x and y is also a factor; for example gcd 4 2 = 2, gcd (-4) 6 = 2, gcd 0 4 = 4. gcd 0 0 = 0. (That is, the common divisor that is "greatest" in the divisibility preordering.)
gcd :: Integral a => a -> a -> a
-}


-- 1.7 Task 6
{-
ghci> silnia 5
120
ghci> main
Podaj liczbê naturaln¹:
4
24
-}

-- 2.1 Task 2
{-
ghci> :info (*)
type Num :: * -> Constraint
class Num a where
  ...
  (*) :: a -> a -> a
  ...
        -- Defined in `GHC.Num'
infixl 7 *

ghci> :info (/)
type Fractional :: * -> Constraint
class Num a => Fractional a where
  (/) :: a -> a -> a
  ...
        -- Defined in `GHC.Real'
infixl 7 /

ghci> :info (^)
(^) :: (Num a, Integral b) => a -> b -> a       -- Defined in `GHC.Real'
infixr 8 ^
-}


-- 2.2.2
{-
ghci> 113 `rem` 2
1
ghci> 113 `rem` 3
2

113 jest liczba pierwsza
-}


-- 2.3.3
{-
ghci> let cuboidVolume l w h = l*w*h
ghci> cuboidVolume 3 4 5
60
-}


-- 2.5
{-
ghci> pyramidVolume base sideHeight = (1/3) * base * base * sideHeight
ghci> pyramidVolume 4 9
48.0
-}