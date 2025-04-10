---checks if the file is there
---@param path string
---@return boolean
local file_exists = function(path)
    local file = io.open(path, "r")

    if file then
        file:close()
        return true
    end

    return false
end

---it opens the file, if it exists it return a random word, if not it returns an empty string.
---@param path string
---@return table<number,string>
local read_file = function(path)
    if not file_exists(path) then
        return {}
    end
   
    local lines = {}
    for line in io.lines(path) do
        lines[#lines+1] = line
    end

    return lines
end

---takes in a table of indexes and strings and returns a random string.
---@param lines table<number, string>
---@return string
local get_word = function(lines)
    if #lines == 0 then
        return ""
    end
    local index = math.random(1, #lines+1)

    return lines[index]
end

print(get_word(read_file("assets/english.txt")))
print(get_word(read_file("assets/german.txt")))