-- Arguments
-- Lua by default have a predefined global variable called arg which stores the arguments passed to the program. It is an array of strings
-- arg[0] is the name of the program , arg[1] is the first argument passed to the program and so on
-- Run the script with arguments via command line like ./basics-1.lua 1 2 3
print(arg[0], arg[1], arg[2], arg[3])
-- Output ./basics-1.lua  1       2       nil