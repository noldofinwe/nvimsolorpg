local lists_dir = vim.fn.getcwd() .. "/lists/"

-- Ensure the directory exists
local function ensure_dir_exists()
    vim.fn.mkdir(lists_dir, "p")
end

-- Load list from JSON file
local function read_list(list_name)
    ensure_dir_exists()
    local file_path = lists_dir .. list_name .. ".json"
    local file = io.open(file_path, "r")
    if not file then return {} end
    local content = file:read("*all")
    file:close()
    return vim.json.decode(content) or {}
end

-- Write list to JSON file
local function write_list(list_name, data)
    ensure_dir_exists()
    local file_path = lists_dir .. list_name .. ".json"
    local file = io.open(file_path, "w")
    file:write(vim.json.encode(data))
    file:close()
end

-- 📝 **Command to Add an Entry**
vim.api.nvim_create_user_command('AddToList', function(opts)
    local args = vim.split(opts.args, " ")
    local list_name = args[1]
    local entry = table.concat(args, " ", 2)

    if not list_name or entry == "" then
        print("❌ Usage: :AddToList <list_name> <entry>")
        return
    end

    local list = read_list(list_name)
    table.insert(list, entry)
    write_list(list_name, list)

    print("✅ Added to", list_name, ":", entry)
end, { nargs = "*" })

-- ❌ **Command to Remove an Entry**
vim.api.nvim_create_user_command('RemoveFromList', function(opts)
    local list_name = opts.args
    if not list_name or list_name == "" then
        print("❌ Usage: :RemoveFromList <list_name> <entry>")
        return
    end

    local list = read_list(list_name)
    local new_list = {}

    -- Filter out the entry
    for _, item in ipairs(list) do
        if item ~= opts.args then
            table.insert(new_list, item)
        end
    end

    write_list(list_name, new_list)
    print("✅ Removed from", list_name, ":", opts.args)
end, { nargs = 1 })

-- 🎲 **Command to Pick a Random Entry and Insert It**
vim.api.nvim_create_user_command('RandomEntry', function(opts)
    local list_name = opts.args
    if not list_name or list_name == "" then
        print("❌ Usage: :RandomEntry <list_name>")
        return
    end

    local list = read_list(list_name)
    if #list == 0 then
        print("❌ List is empty or does not exist!")
        return
    end

    math.randomseed(os.time())
    local random_entry = list[math.random(#list)]

    -- Insert into current buffer at cursor position
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, {random_entry})

    print("🎲 Inserted random entry:", random_entry)
end, { nargs = 1 })
