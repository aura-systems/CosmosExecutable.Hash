local hash = require "hash"

-- Function to display help
local function displayHelp()
    print("Usage:")
    print("- run hash md5 string [argument]")
    print("- run hash md5 file [path]")
    print("- run hash sha256 string [argument]")
    print("- run hash sha256 file [path]")
    print("- run hash sha512 string [argument]")
    print("- run hash sha512 file [path]")
end

-- Check if arguments were passed
if #arg < 3 or arg[1] == "/help" then
    displayHelp()
    return
end

local hashType = arg[1]
local mode = arg[2]
local input = arg[3]

if hashType == "md5" then
    if mode == "string" then
        print("MD5 hash of '" .. input .. "' is:")
        print(hash.md5(input))
    elseif mode == "file" then
        print("MD5 hash of file '" .. input .. "' is:")
        print(hash.md5_file(input))
    end
elseif hashType == "sha256" then
    if mode == "string" then
        print("SHA256 hash of '" .. input .. "' is:")
        print(hash.sha256(input))
    elseif mode == "file" then
        print("SHA256 hash of file '" .. input .. "' is:")
        print(hash.sha256_file(input))
    end
elseif hashType == "sha512" then
    if mode == "string" then
        print("SHA512 hash of '" .. input .. "' is:")
        print(hash.sha512(input))
    elseif mode == "file" then
        print("SHA512 hash of file '" .. input .. "' is:")
        print(hash.sha512_file(input))
    end
else
    displayHelp()
end
