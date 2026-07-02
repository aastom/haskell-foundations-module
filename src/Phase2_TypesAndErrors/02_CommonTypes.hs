-- src/Phase2_TypesAndErrors/02_CommonTypes.hs
-- Phase 2: The Type System & Debugging
-- Concept: Common type constructors like Lists ([]), Tuples ((,)), Maybe, and Either.

module Phase2_TypesAndErrors.CommonTypes where

-- Lists `[]`

-- Lists are homogeneous collections of elements of the same type.
-- They are fundamental to functional programming.

-- Type signature for a list of Integers:
myIntList :: [Int]
myIntList = [1, 2, 3, 4, 5]

-- Type signature for a list of Characters (which is a String):
myCharList :: [Char] -- Same as String
myCharList = "Haskell"

-- Common list operations:
-- `head` returns the first element of a list.
-- `tail` returns the list without its first element.
-- `length` returns the number of elements.
-- `sum` returns the sum of numeric elements.
-- `++` concatenates two lists.

firstElement :: [a] -> a
firstElement xs = head xs

restOfList :: [a] -> [a]
restOfList xs = tail xs

-- Note: `head` and `tail` are partial functions, meaning they fail on empty lists.
-- It's generally safer to use pattern matching or functions that handle empty lists.

-- Tuples `(,)`

-- Tuples are heterogeneous collections of a fixed number of elements.
-- The elements can be of different types.

-- Type signature for a pair of an Integer and a String:
myPair :: (Int, String)
myPair = (1, "Apple")

-- Type signature for a triple of a Bool, a Float, and a Char:
myTriple :: (Bool, Float, Char)
myTriple = (True, 3.14, 'A')

-- Accessing tuple elements:
-- `fst` returns the first element of a 2-tuple.
-- `snd` returns the second element of a 2-tuple.
fstElement :: (a, b) -> a
fstElement (x, _) = x

sndElement :: (a, b) -> b
sndElement (_, y) = y

-- Note: `fst` and `snd` only work for 2-tuples. For larger tuples, you need pattern matching.

-- Maybe Type `Maybe`

-- The `Maybe` type is used to represent computations that might fail or not return a result.
-- It has two constructors:
--   `Just a`: Represents a successful computation with a result of type `a`.
--   `Nothing`: Represents failure or absence of a result.

-- Type signature for a function that might find an element in a list.
safeHead :: [a] -> Maybe a
safeHead []    = Nothing
safeHead (x:_) = Just x

-- Example usage of Maybe:
-- `safeHead [1,2,3]` returns `Just 1`
-- `safeHead []` returns `Nothing`

-- Function to process a `Maybe Int` value.
processMaybeInt :: Maybe Int -> String
processMaybeInt (Just n) = "The number is: " ++ show n
processMaybeInt Nothing  = "No number was provided."

-- Either Type `Either`

-- The `Either` type is used to represent computations that can have two distinct outcomes.
-- It has two constructors:
--   `Left a`: Typically used to represent an error or failure, with an error value of type `a`.
--   `Right b`: Typically used to represent success, with a result value of type `b`.

-- Type signature for a function that parses a string to an Int, which might fail.
-- `Left String` for error messages, `Right Int` for success.
parseInt :: String -> Either String Int
parseInt "123" = Right 123
parseInt "-45"  = Right (-45)
parseInt str   = Left ("Could not parse \"" ++ str ++ "\" as an integer")

-- Example usage of Either:
-- `parseInt "123"` returns `Right 123`
-- `parseInt "hello"` returns `Left "Could not parse \"hello\" as an integer"`

-- Function to handle an `Either` result.
handleParseResult :: Either String Int -> String
handleParseResult (Right n) = "Successfully parsed: " ++ show n
handleParseResult (Left err) = "Parsing error: " ++ err

-- To experiment in GHCi:
-- `stack ghci src/Phase2_TypesAndErrors/02_CommonTypes.hs`
-- Then try:
-- `myIntList`
-- `firstElement myIntList`
-- `safeHead []`
-- `processMaybeInt (Just 5)`
-- `parseInt "abc"`
-- `handleParseResult (parseInt "abc")`
