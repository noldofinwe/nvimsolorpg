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
vim.api.nvim_create_user_command('RollSkillNote', function(opts)
local skill_name = opts.args
if not skill_name or skill_name == "" then
  print("❌ Usage: :RollSkillNote <name>")
  return
  end

  local skill_file = vim.fn.getcwd() .. "/player/skills.json"
  local file = io.open(skill_file, "r")
  if not file then
    print("❌ Skills file not found!")
    return
    end

    local skills = vim.json.decode(file:read("*all"))
    file:close()

    local skill_value = skills[skill_name]
    if not skill_value then
      print("❌ Skill not found!")
      return
      end

      math.randomseed(os.time())
      local roll = math.random(1, 100)
      local success = roll <= skill_value

      local markdown_note = {
        string.format("## 🎲 Roll: %s", skill_name),
                                 "",
                                 string.format("**Rolled:** %d vs **Skill:** %d", roll, skill_value),
                                 "",
                                 success and "**✅ Success!**" or "**❌ Failure!**"
      }

      -- Insert formatted Markdown result into current buffer at cursor position
      local row, col = unpack(vim.api.nvim_win_get_cursor(0))
      vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, markdown_note)
      end, { nargs = 1 })
vim.api.nvim_create_user_command('RollSkillTable', function(opts)
local skill_name = opts.args
if not skill_name or skill_name == "" then
  print("❌ Usage: :RollSkillTable <name>")
  return
  end

  local skill_file = vim.fn.getcwd() .. "/player/skills.json"
  local file = io.open(skill_file, "r")
  if not file then
    print("❌ Skills file not found!")
    return
    end

    local skills = vim.json.decode(file:read("*all"))
    file:close()

    local base_skill = skills[skill_name]
    if not base_skill then
      print("❌ Skill not found!")
      return
      end

      math.randomseed(os.time())
      local roll = math.random(1, 100)

      -- Calculate critical success range (1/10th of skill value)
local critical_threshold = math.ceil(base_skill * 0.1)

-- Define Mythras difficulty levels
local difficulties = {
  { name = "Automatic", modifier = nil },  -- No roll needed
  { name = "Very Easy", modifier = base_skill * 2 },
  { name = "Easy", modifier = base_skill * 1.5 },
  { name = "Standard", modifier = base_skill },
  { name = "Hard", modifier = base_skill * 0.66 },
  { name = "Formidable", modifier = base_skill * 0.5 },
  { name = "Herculean", modifier = base_skill * 0.1 },
  { name = "Hopeless", modifier = 0 }
}

local results = {}
for _, diff in ipairs(difficulties) do
  local modified_skill = diff.modifier and math.max(diff.modifier, 0) or "N/A"
  local success = diff.modifier and roll <= modified_skill or "Automatic"
  local result_text = success == "Automatic" and "**⚡ Automatic Success**" or (roll <= modified_skill and "**✅ Success**" or "**❌ Failure**")

  -- Handle Critical Success & Fumbles
  if success ~= "Automatic" then
    if roll <= critical_threshold then
      result_text = "**💥 Critical Success!**"
      elseif roll == 99 or roll == 100 then
        result_text = "**🔥 Fumble!**"
        end
        end

        table.insert(results, string.format("| %s | %s | %d vs %s | %s |",
                                            diff.name, modified_skill, roll, modified_skill, result_text))
        end

        -- Markdown Table Output
        local markdown_table = {
          string.format("## 🎲 Roll: %s", skill_name),
                                 "",
                                 "**Rolling d100 vs difficulty modifiers:**",
                                 "",
                                 "| Difficulty Grade | Target Skill % | Roll vs Skill | Result |",
                                 "|------------------|--------------|--------------|--------|",
        }
        vim.list_extend(markdown_table, results)

        -- Insert Markdown table into current buffer
        local row, col = unpack(vim.api.nvim_win_get_cursor(0))
        vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, markdown_table)
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
