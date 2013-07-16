succ 8
min 9 10
max 9 10

-- function application has highest precedence, so these two are identical
succ 9 + max 5 4 + 1        -- 16
(succ 9) + (max 5 4) + 1    -- 16

succ 9 * 10    -- equals (9+1)*10 = 100
succ (9 * 10 ) -- equals 91
