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