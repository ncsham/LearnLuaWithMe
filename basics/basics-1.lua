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
--Basic Types : nil, Boolean, number, string, userdata, function, thread, and table
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
---------------------------------------------------------------------------------------------------------------------------------------------------


-- Strings in "Double Quotes", Characters in single quotes i.e 'a', Patterns also in single quotes '[%w_]*'

-- defines a factorial function
function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end
print("enter a number:")
a = io.read("*n")
print(fact(a))
-- reads a number


dofile("basics-2.lua")