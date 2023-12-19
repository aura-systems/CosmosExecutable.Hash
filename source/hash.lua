local crypto = require "cosmos.crypto"

local function md5(str)
    return crypto.strtomd5(str)
end

local function md5_file(filePath)
    return crypto.filetomd5(filePath)
end

local function sha256(str)
    return crypto.strtosha256(str)
end

local function sha256_file(filePath)
    return crypto.filetosha256(filePath)
end

local function sha512(str)
    return crypto.strtosha512(str)
end

local function sha512_file(filePath)
    return crypto.filetosha512(filePath)
end

return {
    md5 = md5,
    md5_file = md5_file,
    sha256 = sha256,
    sha256_file = sha256_file,
    sha512 = sha512,
    sha512_file = sha512_file,
}
