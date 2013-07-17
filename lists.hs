---------------------------------------------------------------------------
-- lists
ghci> let lostNumbers = [4,8,15,16,23,42]

---------------------------------------------------------------------------
-- ranges
ghci>[1..10]
[1,2,3,4,5,6,7,8,9,10]
ghci>['a'..'m']
"abcdefghijklm"

-- specify the first two values, to control the step
ghci>[0,3..20]
[0,3,6,9,12,15,18]

-- for decreasing values, need to give step
ghci>[20..1]
[]
ghci>[20,19..1]
[20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]

-- Use 'take' with infinite ranges:
ghci>take 20 [2,4..]
[2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40]

---------------------------------------------------------------------------
-- concatenation - use ++ to join lists
-- this is slow if used repeatedly on very long lists,
-- as Haskell has to walk through the entire first list
ghci> [1,2,3,4] ++ [9,10,11,12] -- [1,2,3,4,9,10,11,12]
ghci> "hello" ++ " " ++ "world" -- "hello world"
ghci> ['w','o'] ++ ['o','t']  -- "woot"

-- Use : to insert items at the start of a list - this is fast
ghci> 'A':" SMALL CAT" -- "A SMALL CAT"
ghci> 5:[1,2,3,4,5] -- [5,1,2,3,4,5]

-- Use the !! operator to acess (zero-based) elements in the list
ghci>[42..] !! 0 -- 42

-- comparison is lexicographical
ghci> [3,2,1] > [2,1,0]
True

---------------------------------------------------------------------------
-- List functions

-- head: get first element
ghci> head [5,4,3,2,1]
5

-- tail: Strip off first, and get remainder:
ghci> tail [5,4,3,2,1]
[4,3,2,1]

-- last: Get last element:
ghci> last [5,4,3,2,1]
1

-- init: Get all except last:
ghci> init [5,4,3,2,1]
[5,4,3,2]

-- length: Number of elements:
ghci> length [5,4,3,2,1]
5

-- null: Check if list empty
ghci>null [1..5]
False

-- reverse: Reverse the elements
ghci> reverse [5,4,3,2,1]
[1,2,3,4,5]

-- take: extract (at most) a certain number of elements from the start of a list - 
--       or however many are available
ghci>take 3 [0..5]
[0,1,2]
ghci>take 10 [0..5]
[0,1,2,3,4,5]

-- drop: remove (at most) a certain number of elements from the start of a list
ghci>drop 2 [0..5]
[2,3,4,5]

-- more functions
ghci>maximum [0..5]
5
ghci>minimum [0..5]
0
ghci>sum [0..5]
15
ghci>product [1..5]
120

-- elem: reports if a value is present in a list
ghci>elem 42 [0..5]
False
ghci>42 `elem` [0..5]
False

-- cycle: replicate elements infinitely
ghci>take 12 ( cycle [2,4,6] )
[2,4,6,2,4,6,2,4,6,2,4,6]

-- repeat: produce an infinite list of a single element
ghci>take 12 (repeat 42)
[42,42,42,42,42,42,42,42,42,42,42,42]

-- replicate: easier way to create a list from a single item:
ghci>replicate 12 42
[42,42,42,42,42,42,42,42,42,42,42,42]
