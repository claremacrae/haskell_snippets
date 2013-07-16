-- load this into ghci with ":l functions_writing.hs" - then call with "doubleMe 5.2"
doubleMe x = x + x

-- can combine functions together:
doubleUs x y = doubleMe x + doubleMe y

-- more complex example
doubleSmallNumber x = if x > 100
                        then x
                        else x* 2

-- prime either introduces a strict version of a function, 
-- or denotes something with a slightly modified name:
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1