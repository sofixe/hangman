local file_exists = function (path)
    local file = io.open(path, "r")

    if file then
        file:close()
        return true
    end

    return false
end

print(file_exists("assets/english.txt"))
print(file_exists("fjjfsjfjs"))