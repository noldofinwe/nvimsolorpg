vim.api.nvim_create_user_command('RandomSomeone', function()
    local options = {
        "Nobody special but convenient",
        "A political or reasonable person",
        "They aren’t exactly a person...",
        "A very famous figure or leader",
        "Someone currently in trouble",
        "Someone who knows the area",
        "Someone holy or well revered",
        "Belongs to a family or faction",
        "Someone you relate to, or know",
        "Someone you’d prefer to avoid"
    }

    -- Roll a d10
    math.randomseed(os.time())
    local result = math.random(1, #options)

    -- Print result in Neovim
   vim.api.nvim_put({'>[!Someone] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})


vim.api.nvim_create_user_command('InsertObjectPurpose', function()
    local options = {
        "Triggers transformation or mutation",
        "Can restore, heal, repair, or revive",
        "Is hindering, paralyzing, or disabling",
        "Capable of channeling or enhancing",
        "Protects from some kind of harm",
        "Designed to cause physical harm",
        "Meant to cause mental affliction",
        "Restore or boost energy or stamina",
        "Grants a special power or ability",
        "Communicate or transmit remotely"
    }

    -- Roll a d10
    math.randomseed(os.time())
    local result = math.random(1, #options)

    -- Insert into the current cursor position
    vim.api.nvim_put({'>[!Object] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})


vim.api.nvim_create_user_command('InsertHazardType', function()
    local options = {
        "Agile, fast, nimble",
        "Armored, defensive",
        "Sneaky, hiding, rogue",
        "Tactical, smart, clever",
        "Magic, special, power",
        "Technical, gadgets",
        "Strong, brute, large",
        "Flying, swim, jumps",
        "Intimidating, scary",
        "Ranged, accurate"
    }

    -- Roll a d10
    math.randomseed(os.time())
    local result = math.random(1, #options)

    -- Insert into the current cursor position
    vim.api.nvim_put({'>[!Hazard] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

vim.api.nvim_create_user_command('InsertPlaceDescriptor', function()
local options = {
    "Is difficult to traverse or navigate",
    "Is very hard to find or get inside",
    "Has bad reputation or dangerous",
    "Is moving, changing, or shifting",
    "In a hazardous atmosphere or area",
    "Is being protected by some faction",
    "Holds valuable resources or riches",
    "Has been abandoned or destroyed",
    "Is holy, sacred, or somehow cursed",
    "Magical, or advanced technology"
}

-- Roll a d10
math.randomseed(os.time())
local result = math.random(1, #options)

-- Insert into the current cursor position
vim.api.nvim_put({'>[!Place] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})


vim.api.nvim_create_user_command('InsertPerceptionEvent', function()
local options = {
    "Hear a voice, scream, whisper",
    "Smell an atmospheric hazard",
    "See a shadow, ghost, or vision",
    "Become hindered or impaired",
    "Be exposed to harm or danger",
    "Sense someone following you",
    "Recognize something familiar",
    "Reminiscence of a recent event",
    "Anticipate an event or a future",
    "Something moving or changing"
}

-- Roll a d10
math.randomseed(os.time())
local result = math.random(1, #options)

-- Insert into the current cursor position
vim.api.nvim_put({'>[!Perception] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

vim.api.nvim_create_user_command('InsertMoodDescriptor', function()
local options = {
    "Of anxiety, unease, or distress",
    "Of relief, calm, or tranquility",
    "Of irritation, anger, or annoyance",
    "Of curiosity, interest, or wisdom",
    "Of confusion, doubt, indecision",
    "Of excitement, energy, power",
    "Of loneliness, silence, emptiness",
    "Of determination, work, focus",
    "Of nervousness, fear, concern",
    "Of joy, satisfaction, pleasure"
}

-- Roll a d10
math.randomseed(os.time())
local result = math.random(1, #options)

-- Insert into the current cursor position
vim.api.nvim_put({'>[!Mood] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

vim.api.nvim_create_user_command('InsertRandomDescription', function()
local options = {
    "Ancient / Old",
    "Beautiful / Nice",
    "Bright / Shiny",
    "Chaotic / Mad",
    "Cheery / Happy",
    "Circular / Fat",
    "Cold / Distant",
    "Colorful / Light",
    "Cozy / Friendly",
    "Dangerous",
    "Dark / Evil",
    "Diverse / Varied",
    "Dry / Rough",
    "Dull / Boring",
    "Exciting / Active",
    "Foggy / Blurry",
    "Futuristic / Far",
    "Gloomy / Grim",
    "Historic / Quaint",
    "Homogeneous",
    "Hot / Angry",
    "Humid / Warm",
    "Innovative / Cool",
    "Jagged / Edgy",
    "Lonely / Separate",
    "Majestic / Grand",
    "Modern / New",
    "Mysterious / Odd",
    "Peaceful / Calm",
    "Poor / Lacking",
    "Rainy / Wet",
    "Rectangular",
    "Rich / Wealthy",
    "Romantic / Loving",
    "Smooth / Cool",
    "Snowy / Slow",
    "Sprawling",
    "Sad / Depressing",
    "Scary / Taunting",
    "Serene / Quiet",
    "Stable / Calm",
    "Stormy / Mad",
    "Sunny / Smiling",
    "Traditional / Norm",
    "Tiny / Small",
    "Ugly / Horrid",
    "Unexpected",
    "Vast / Big",
    "Violent / Furious",
    "Windy / Moving"
}

-- Roll a d100
math.randomseed(os.time())
local result = math.random(1, #options)

-- Insert into the current cursor position
vim.api.nvim_put({'>[!Description] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

vim.api.nvim_create_user_command('InsertHowMany', function()
local options = {
    "Just one, or none",
    "Way less than expected",
    "A bit less than expected",
    "As expected",
    "As expected",
    "As expected",
    "As expected",
    "A bit more than expected",
    "Way more than expected",
    "Countless, or infinite"
}

math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!How Many] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

vim.api.nvim_create_user_command('InsertHowGood', function()
local options = {
    "Damaged, or useless",
    "Way worse than expected",
    "A bit worse than expected",
    "As expected",
    "As expected",
    "As expected",
    "As expected",
    "A bit better than expected",
    "Way better than expected",
    "Magnificent, or perfect"
}

math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!How Good] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

vim.api.nvim_create_user_command('InsertHowHard', function()
local options = {
    "Very easy, or not worth it",
    "Way easier than expected",
    "A bit easier than expected",
    "As expected",
    "As expected",
    "As expected",
    "As expected",
    "A bit harder than expected",
    "Way harder than expected",
    "Overwhelming, or impossible"
}

math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!How Hard] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Discovery (Find)
vim.api.nvim_create_user_command('InsertDiscovery', function()
local options = {
    "Finds something broken or fractured",
    "Finds something hidden or concealed",
    "Finds something abandoned or unused",
    "Finds something unsafe or unstable",
    "Finds something useful or valuable",
    "Finds something rare or unique",
    "Finds something unwanted or cursed",
    "Finds something ancient or forgotten",
    "Finds something artificial or built",
    "Finds something alive or changing"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Discovery] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Intent (Wants)
vim.api.nvim_create_user_command('InsertIntent', function()
local options = {
    "Wants to destroy or eliminate something",
    "Wants to find or track something",
    "Wants to protect or hide something",
    "Wants to change or improve something",
    "Wants to hurt, harm, or weaken something",
    "Wants to heal, repair, or restore something",
    "Wants to obtain or claim something",
    "Wants to defy or oppose something",
    "Wants to understand something deeply",
    "Wants to escape or retreat from something"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Intent] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Activity (Doing)
vim.api.nvim_create_user_command('InsertActivity', function()
local options = {
    "Is trying to break, shatter, or ruin something",
    "Is trying to build, forge, or develop something",
    "Is trying to research, learn, or analyze something",
    "Is trying to steal, take, or capture something",
    "Is trying to defend, guard, or fortify something",
    "Is trying to attack, damage, or hurt something",
    "Is trying to lead, influence, or convince someone",
    "Is trying to explore, travel, or uncover something",
    "Is trying to escape, flee, or withdraw",
    "Is trying to modify, corrupt, or alter something"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Activity] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Problem (Risk)
vim.api.nvim_create_user_command('InsertProblem', function()
local options = {
    "May lose something important or valuable",
    "May attract attention or expose themselves",
    "May create unintended consequences",
    "May be physically harmed or weakened",
    "May make an irreversible mistake",
    "May face betrayal or deception",
    "May encounter something unknown or unexpected",
    "May experience emotional or mental strain",
    "May reveal hidden secrets or dangers",
    "May be too late to act or intervene"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Problem] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Reason (Why)
vim.api.nvim_create_user_command('InsertReason', function()
local options = {
    "Motivated by revenge, justice, or anger",
    "Motivated by curiosity, exploration, or learning",
    "Motivated by greed, wealth, or personal gain",
    "Motivated by duty, loyalty, or obligation",
    "Motivated by survival, necessity, or desperation",
    "Motivated by ambition, power, or control",
    "Motivated by belief, faith, or ideology",
    "Motivated by love, devotion, or protection",
    "Motivated by thrill, excitement, or challenge",
    "Motivated by nostalgia, memory, or past events"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Reason] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Explain (How)
vim.api.nvim_create_user_command('InsertExplain', function()
local options = {
    "Through deception, stealth, or secrecy",
    "Through brute force, aggression, or violence",
    "Through intelligence, logic, or reasoning",
    "Through persuasion, influence, or charm",
    "Through magic, technology, or supernatural means",
    "Through sheer luck, chance, or unpredictability",
    "Through endurance, patience, or resilience",
    "Through teamwork, collaboration, or assistance",
    "Through sacrifice, risk, or selflessness",
    "Through instinct, emotion, or impulsiveness"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Explain] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

vim.api.nvim_create_user_command('InsertRandomBeat', function()
local options = {
    {"Endure a difficult complication", "InsertComplication"},
    {"Play a triggering plot catalyst", "InsertCatalyst"},
    {"Deal with a difficult challenge", "InsertChallenge"},
    {"Put characters in a situation", "InsertSituation"},
    {"Meet or recall a notable character", nil},
    {"Lead to an interesting location", nil},
    {"Reflect a world or game element", nil},
    {"Handle a plot potential obstacle", nil},
    {"Locate or trace a useful finding", nil},
    {"Find answers to a pending question", nil}
}

math.randomseed(os.time())
local result = math.random(1, #options)

-- Insert the random beat at the cursor position
vim.api.nvim_put({'>[!Random plot beat] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result][1]}, 'c', true, true)

-- If the beat refers to another table, automatically roll that too
if options[result][2] then
    vim.cmd("silent! " .. options[result][2])
    end
    end, {})

-- Complication (A)
vim.api.nvim_create_user_command('InsertComplication', function()
local options = {
    "An attack, a trap, or ambush!",
    "Face plot unrelated opposition",
    "Betrayal, or a change of mind",
    "Location becomes a problem",
    "Trouble with gear or supplies",
    "Accident, or a disaster strikes",
    "Someone needs help, badly",
    "Misinformation, or deception",
    "Delayed, blocked, or a detour",
    "A character's flaw is triggered"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Complication] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Catalyst (B)
vim.api.nvim_create_user_command('InsertCatalyst', function()
local options = {
    "Discover a path, or location",
    "Regret a recent decision",
    "Uncover someone's secret",
    "Chance for a trade, or loot",
    "Address characters' needs",
    "Temptation with a curiosity",
    "Feel impact of remote event",
    "Reveal a faction's intentions",
    "Reaction of the environment",
    "Trigger a character story arc"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Catalyst] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Challenge (C)
vim.api.nvim_create_user_command('InsertChallenge', function()
local options = {
    "Require first aid or medicine",
    "Endure or resist a challenge",
    "Strength or power could help",
    "Use for craft, magic, or tech",
    "Spot a useful object or item",
    "Need for strong persuasion",
    "Something fails or breaks",
    "Some danger better to avoid",
    "A locked door, object, or path",
    "Recall knowledge or logic test"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Challenge] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Situation (D)
vim.api.nvim_create_user_command('InsertSituation', function()
local options = {
    "Worst-case scenario unfolds",
    "Face an emergency or alarm",
    "Being watched or followed",
    "Risk harming a relationship",
    "Unexpected twist or reveal",
    "Sudden change in the place",
    "Someone may be deceptive",
    "A faction makes its move",
    "Discover something of value",
    "Best-case scenario occurs"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Situation] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Propose a beat, but... (1d10)
vim.api.nvim_create_user_command('InsertProposedBeat', function()
local options = {
    "Increase the intensity and tension",
    "Bring someone quite inconvenient",
    "Add some trouble, or bad news",
    "Make the location less favorable",
    "Cause frustration, stress, or worry",
    "Cause confusion, doubts, disarray",
    "Make the location more favorable",
    "Add some reward, or good news",
    "Bring someone quite convenient",
    "Decrease the intensity and tension"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Proposed plot beat] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})
