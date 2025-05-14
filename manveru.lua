vim.api.nvim_create_user_command("RollDiceInsert", function(opts)
  local sides = tonumber(opts.args) or 6 -- Default to a 6-sided die
  math.randomseed(os.time())
  local roll_result = "🎲 You rolled a " .. math.random(1, sides)

  -- Insert into current buffer at cursor position
  local row, col = unpack(vim.api.nvim_win_get_cursor(0)) -- Get cursor position
  vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, { roll_result })
end, { nargs = "?" })

vim.api.nvim_create_user_command("CreateCampaign", function(opts)
  local campaign_name = opts.args or "NewCampaign"
  local base_path = vim.fn.getcwd() .. "/" .. campaign_name

  -- Define the folder structure
  local folders = { "player", "npcs", "world", "sessions" }

  -- Create the main campaign folder
  vim.fn.mkdir(base_path, "p")

  -- Create subdirectories
  for _, folder in ipairs(folders) do
    vim.fn.mkdir(base_path .. "/" .. folder, "p")
  end

  print("📂 Campaign structure created at: " .. base_path)
end, { nargs = "?" })

local skill_file = vim.fn.getcwd() .. "/player/skills.json"

-- Ensure skills.json exists
local function ensure_file_exists()
  if vim.fn.filereadable(skill_file) == 0 then
    local file = io.open(skill_file, "w")
    file:write("{}")
    file:close()
  end
end

-- Read skills from JSON
local function read_skills()
  ensure_file_exists()
  local file = io.open(skill_file, "r")
  local content = file:read("*all")
  file:close()
  return vim.json.decode(content)
end

-- Write skills to JSON
local function write_skills(skills)
  local file = io.open(skill_file, "w")
  file:write(vim.json.encode(skills))
  file:close()
end

-- 📝 Command to add a skill
vim.api.nvim_create_user_command("AddSkill", function(opts)
  local args = vim.split(opts.args, " ")
  local skill_name = args[1]
  local skill_value = tonumber(args[2])

  if not skill_name or not skill_value then
    print("❌ Usage: :AddSkill <name> <value>")
    return
  end

  local skills = read_skills()
  skills[skill_name] = skill_value
  write_skills(skills)

  print("✅ Added skill:", skill_name, "(", skill_value .. "% )")
end, { nargs = "*" })

-- 🎲 Command to roll against a skill
vim.api.nvim_create_user_command("RollSkill", function(opts)
  local skill_name = opts.args
  if not skill_name or skill_name == "" then
    print("❌ Usage: :RollSkill <name>")
    return
  end

  local skills = read_skills()
  local skill_value = skills[skill_name]

  if not skill_value then
    print("❌ Skill not found!")
    return
  end

  math.randomseed(os.time())
  local roll = math.random(1, 100)
  local success = roll <= skill_value

  print("🎲 Rolling for:", skill_name)
  print("🔢 You rolled:", roll, "vs", skill_value)
  print(success and "✅ Success!" or "❌ Failure!")
end, { nargs = 1 })

vim.api.nvim_create_user_command("NewSession", function()
  local session_dir = vim.fn.expand(vim.fn.getcwd() .. "/sessions/")
  local session_name = vim.fn.input("Enter session name: ")
  local session_path = session_dir .. session_name .. ".md"

  -- Ensure the sessions directory exists
  vim.fn.mkdir(session_dir, "p")

  -- Session template content
  local template = [[
---
title: ]] .. session_name .. [[
date: ]] .. os.date("%Y-%m-%d") .. [[
tags: [session log, RPG, campaign]
badges: [Ongoing Story, Player Notes, Game Master Reference]
meta:
  session_number: "TODO"
  campaign_name: "TODO"
  players_present: ["TODO"]
  key_events: []
  unresolved_threads: []
---

# 🎲 **Session - ]] .. session_name .. [[**
## 🗓️ **Session Info**
- **Date Played:** ]] .. os.date("%Y-%m-%d") .. [[
- **Players Present:** TODO

---

## 📜 **Session Summary**
]]

  -- Write the template to the file
  local file = io.open(session_path, "w")
  if file then
    file:write(template)
    file:close()
    print("Session file created: " .. session_path)
  else
    print("Error creating session file.")
  end

  -- Open the new session file in Neovim
  vim.cmd("edit " .. session_path)
end, {})

return {}
