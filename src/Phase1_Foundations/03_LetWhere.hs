-- src/Phase1_Foundations/03_LetWhere.hs
-- Phase 1: First Steps & Core Syntax
-- Concept: `let` and `where` clauses for local definitions, improving readability and avoiding redundancy.

module Phase1_Foundations.LetWhere where

-- Local Bindings: `where` clause

-- The `where` keyword allows you to define local helper functions or values
-- at the end of a function definition. These bindings are only visible
-- within that specific function.

-- Example: Calculating the area of a rectangle given its length and width.
-- We might need an intermediate value, like `area` before printing.
calculateRectangleArea :: Float -> Float -> Float
calculateRectangleArea length width = area
  where
    area = length * width

-- More complex example: calculate the sum of squares of two numbers.
-- Here, `square` is a local helper function.
sumOfSquares :: Int -> Int -> Int
sumOfSquares x y = square x + square y
  where
    square :: Int -> Int
    square n = n * n

-- `where` clauses can also be used for pattern matching or multiple equation definitions.
-- For instance, defining a helper that depends on input values.

-- Local Bindings: `let` expression

-- The `let` keyword introduces an expression that allows you to define local bindings
-- which are available only within the scope of the `in` expression that follows it.
-- `let <bindings> in <expression>`

-- Example: Using `let` to define intermediate values for a calculation.
discriminant :: Float -> Float -> Float -> Float
discriminant a b c = let bSquared = b * b
                         fourAC = 4 * a * c
                     in bSquared - fourAC

-- `let` can also define local functions.
volumeCylinder :: Float -> Float -> Float
volumeCylinder radius height = let piVal = 3.14159
                                   baseArea = piVal * radius * radius
                               in baseArea * height

-- Key Differences between `let` and `where`:
-- - `where` is typically placed at the end of a function definition and its bindings
--   are available throughout all equations of that function.
-- - `let` is an expression, meaning it can be used anywhere an expression is expected,
--   and its bindings are local to the `in` clause.
-- - `where` bindings can refer to each other and to the parameters of the function it belongs to.
-- - `let` bindings are typically not recursive among themselves unless explicitly made so (advanced).

-- Example combining `let` and `where` (though often one or the other is sufficient).
someComplexCalculation :: Int -> Int -> Int
someComplexCalculation x y = let doubledX = 2 * x
                                 tripledY = 3 * y
                             in result
  where
    result = doubledX + tripledY + magicNumber
    magicNumber = 42

-- To experiment in GHCi:
-- `stack ghci src/Phase1_Foundations/03_LetWhere.hs`
-- Then try: `calculateRectangleArea 5.0 10.0`, `sumOfSquares 3 4`, `discriminant 1.0 5.0 6.0`
