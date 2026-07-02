-- src/Phase2_TypesAndErrors/03_CustomTypes.hs
-- Phase 2: The Type System & Debugging
-- Concept: Defining new custom data types with `data` and `newtype`,
--          and introducing basic type classes `Eq` and `Show` through `deriving`.

module Phase2_TypesAndErrors.CustomTypes where

-- Defining Custom Data Types with `data`

-- The `data` keyword allows you to define your own algebraic data types (ADTs).
-- These are fundamental for modeling domains effectively in Haskell.

-- Example 1: An Enum-like type for colors.
-- `Color` has three possible constructors: `Red`, `Green`, `Blue`.
data Color = Red | Green | Blue

-- Example 2: A record-like type for a 2D point.
-- `Point` has one constructor `Point` that takes two `Float` values.
-- Record syntax automatically creates accessor functions (`xCoord`, `yCoord`).
data Point = Point
  { xCoord :: Float
  , yCoord :: Float
  }

-- Example 3: A recursive data type for a singly linked list (similar to Haskell's built-in list).
-- `List` can either be `Empty` or a `Cons` (constructor for a cell) containing a value `a` and another `List a`.
data List a = Empty | Cons a (List a)

-- Example 4: A tree data structure.
data Tree a = Leaf a | Node (Tree a) (Tree a)

-- Type Classes `Eq` and `Show`

-- Type classes describe interfaces (sets of functions) that certain types can implement.
-- `Eq` provides equality comparison (`==` and `/=`).
-- `Show` provides a way to convert a value to a string (`show`).

-- We can automatically derive instances for many common type classes using `deriving`.

data Shape = Circle Float | Rectangle Float Float
  deriving (Show, Eq) -- Now we can print Shapes and compare them for equality.

-- Example usage of derived `Show` and `Eq` for `Shape`:
-- `show (Circle 5.0)` returns `"Circle 5.0"`
-- `Circle 5.0 == Circle 5.0` returns `True`
-- `Circle 5.0 == Rectangle 2.0 3.0` returns `False`

-- Defining Custom Data Types with `newtype`

-- The `newtype` keyword is similar to `data` but is used for types with exactly one constructor
-- and exactly one field within that constructor. It introduces no runtime overhead compared to
-- its underlying type, making it useful for creating distinct types for improved type safety.

-- Example: Differentiating between `Meter` and `Centimeter`.
newtype Meter = Meter Float
  deriving (Show, Eq)

newtype Centimeter = Centimeter Float
  deriving (Show, Eq)

-- You can't directly add `Meter` and `Centimeter` without explicit conversion,
-- enhancing type safety.
-- `(Meter 5.0) + (Centimeter 10.0)` would be a type error.

-- Function to convert Centimeter to Meter
centimeterToMeter :: Centimeter -> Meter
centimeterToMeter (Centimeter cm) = Meter (cm / 100.0)

-- Using our custom List type (for demonstration, prefer Haskell's built-in lists)
myCustomList :: List Int
myCustomList = Cons 1 (Cons 2 (Cons 3 Empty))

-- Function to get the head of our custom list
headCustomList :: List a -> Maybe a
headCustomList Empty      = Nothing
headCustomList (Cons x _) = Just x

-- To experiment in GHCi:
-- `stack ghci src/Phase2_TypesAndErrors/03_CustomTypes.hs`
-- Then try:
-- `Red`
-- `Point { xCoord = 10.0, yCoord = 20.0 }`
-- `Circle 5.0`
-- `Circle 5.0 == Circle 6.0`
-- `let m = Meter 2.5; let cm = Centimeter 250.0; centimeterToMeter cm == m`
-- `headCustomList myCustomList`
