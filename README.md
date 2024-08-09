## Learning Lua
### Introduction
- This Repo's most content is taken from `Programming in Lua 4th Ed. by Roberto Lerusalimschy of Lua.Org`
-
### Get Lua
- [Installation](#installation)
  - `wget https://www.lua.org/ftp/lua-5.4.7.tar.gz`
  - `tar zxf lua-5.4.7.tar.gz`
  - `cd lua-5.4.7`
  - `make all install`
- [Test Installation](#test-installation)
  ```lua
  $ lua -v
  Lua 5.4.7  Copyright (C) 1994-2024 Lua.org, PUC-Rio
  ```
  - Start Lua in interactive Mode like ipython or python by running `lua` on command line
    - To Exit Lua Interactive Mode use ctrl-D or os.exit()
  - To start an interactive session after running a lua script use eg. `lua -i basics-1.lua`. Helpful for Debugging
### Basics
- Running Chunks
  - Each piece of code that Lua executes, such as a file or a single line in interactive mode, is called a chunk.
    - Run chunks by starting lua in interactive mode directly with `lua`
    - Run chunks by `dofile("<filename>")` inside another lua script or in an interactive session
