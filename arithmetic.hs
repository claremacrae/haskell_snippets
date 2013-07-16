-- In ghci, you can just type simple expressions, e.g.
2 + 15
5 / 2

-- Need to put parens around negative numbers:
5 * (-3)

-- The following works if typed into ghci - but gives error when loaded, via :l arithmetic.hs
let x = 5 * 7

div 92 10   -- 9
92 `div` 10	-- backticks make it infix, so purpose is clearer
