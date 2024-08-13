---------------------------------------------------------------------------------------------------------------------------------------------------
-- Comments:
-- Comments in Lua can be written in two ways:
-- This is a single line comment
--[[
This is a multi-line comment
]]
---------------------------------------------------------------------------------------------------------------------------------------------------
-- Identifiers(Names):
-- Identifiers (or names) in Lua can be any string of letters, digits, and underscores, not beginning with a digit; for instance
-- Lua is case sensitive
myVariable = 10
myvariable = 11
---------------------------------------------------------------------------------------------------------------------------------------------------
-- Statements:
-- Lua needs no separator between consecutive statements, but we can use a semicolon if we wish. Line breaks play no role in Lua's syntax; for instance, the following four chunks are all valid and equivalent:
a= 1 b=a* 2
a = 1;
b = a * 2;
a = 1; b = a * 2
a = 1  b = a * 2 -- ugly, but valid
---------------------------------------------------------------------------------------------------------------------------------------------------
-- Global Variables:
-- Global variables do not need declarations; we can simply use them. It is not an error to access a non-initialized variable; we just get the value nil as the result
-- Global variable has a nil value by default, before its first assignment, and we can assign nil to a global variable to delete it.
--[[
    lua
    Lua 5.4.7  Copyright (C) 1994-2024 Lua.org, PUC-Rio
    > c
    nil
    > c = 10
    > c
    10
]]
---------------------------------------------------------------------------------------------------------------------------------------------------
-- Types & Values:
-- Lua is a dynamically-typed language. There are no type definitions in the language; each value carries its own type.
-- Basic Types : nil, Boolean, number, string, userdata, function, thread, and table
--[[
    > type(nil)
    nil
    > type(1)
    number
    > type("hello")
    string
    > type('1')
    string
    > type(true)
    boolean
    > type(type)
    function
    > type({})
    table
    > type(io.stdin)
    userdata
]]
-- The userdata type allows arbitrary C data to be stored in Lua variables. It has no predefined operations in Lua, except assignment and equality test. Userdata are used to represent new types created by an application program or a library written in C; for instance, the standard I/O library uses them to represent open files.
-- Conditional tests (e.g., conditions in control structures) consider both the Boolean false and nil as false and anything else as true. In particular, Lua considers both zero and the empty string as true in conditional tests.
z = nil
if z then
    print("z is not nil")
else
    print("z is nil")
end

y = 0
if y then
    print("y is not nil")
else
    print("y is nil")
end
---------------------------------------------------------------------------------------------------------------------------------------------------
-- Arguments
-- Lua by default have a predefined global variable called arg which stores the arguments passed to the program. It is an array of strings
-- arg[0] is the name of the program , arg[1] is the first argument passed to the program and so on
-- Run the script with arguments via command line like ./basics-1.lua 1 2 3
print(arg[0], arg[1], arg[2], arg[3])
-- Output ./basics-1.lua  1       2       nil
---------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------
-- Run a Lua Script Inline
dofile("basics-2.lua")