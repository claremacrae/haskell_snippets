-- lists
ghci> let lostNumbers = [4,8,15,16,23,42]

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

-- next: Ranges
