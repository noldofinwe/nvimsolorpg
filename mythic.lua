-- Terrain Descriptors (1d100)
vim.api.nvim_create_user_command('InsertTerrainDescriptor', function()
local options = {
    "Abandoned", "Abundant", "Activity", "Advanced", "Allies", "Ancient", "Animals", "Atmosphere", "Barren", "Beautiful",
    "Bizarre", "Catastrophe", "Chaotic", "City", "Civilization", "Cliffs", "Clouds", "Cold", "Colorful", "Combative",
    "Communicate", "Conflict", "Damaged", "Danger", "Defense", "Desert", "Dry", "Dull", "Elements", "Empty",
    "Energy", "Enormous", "Environment", "Fertile", "Frightening", "Habitable", "Harsh", "Hazy", "Healthy", "Helpful",
    "Hostile", "Hot", "Intense", "Interesting", "Large", "Lethal", "Life", "Lovely", "Magnificent", "Masses",
    "Mechanical", "Message", "Mighty", "Misfortune", "Mountainous", "Multiple", "Mundane", "Mysterious", "Natural", "Nature",
    "Nondescript", "Ocean", "Odd", "Peaceful", "People", "Plants", "Populated", "Powerful", "Primitive", "Rain",
    "Rare", "Remarkable", "Resourceful", "Riches", "River", "Rocky", "Ruined", "Ruins", "Sandy", "Scary",
    "Simple", "Small", "Strange", "Strong", "Technology", "Threat", "Toxic", "Tranquil", "Trees", "Unusual",
    "Valuable", "Violent", "Warm", "Water", "Weak", "Weather", "Wild", "Windy", "Woods", "Wonders"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Terrain] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Undead Descriptors (1d100)
vim.api.nvim_create_user_command('InsertUndeadDescriptor', function()
local options = {
    "Active", "Aggressive", "Angry", "Animal", "Anxious", "Attract", "Beautiful", "Bestow", "Bizarre", "Bleak",
    "Bold", "Bound", "Combative", "Communicate", "Control", "Create", "Creepy", "Dangerous", "Dark", "Deceive",
    "Dirty", "Disgusting", "Elements", "Enemies", "Energy", "Environment", "Evil", "Fast", "Fear", "Fight",
    "Floating", "Friendly", "Frightening", "Ghost", "Glow", "Goals", "Good", "Guide", "Harm", "Helpful",
    "Helpless", "Historical", "Horrible", "Hungry", "Initiate", "Intelligent", "Large", "Leadership", "Light", "Limited",
    "Lonely", "Lost", "Macabre", "Malice", "Message", "Messy", "Mighty", "Mindless", "Miserable", "Misfortune",
    "Monstrous", "Mundane", "Odd", "Old", "Pain", "Pale", "Passive", "Possessions", "Powerful", "Powers",
    "Purposeful", "Pursue", "Quiet", "Resistant", "Rotting", "Scary", "Seeking", "Shambling", "Slow", "Small",
    "Smelly", "Strange", "Strong", "Threatening", "Tough", "Transform", "Travel", "Trick", "Vengeful", "Violent",
    "Weak", "Weakness", "Whispers", "Wounds", "Young"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Undead] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Visions & Dreams (1d100)
vim.api.nvim_create_user_command('InsertVisionDream', function()
local options = {
    "Activity", "Adversity", "Allies", "Assist", "Attainment", "Bizarre", "Bleak", "Catastrophe", "Celebrate", "Chance",
    "Chaos", "Charm", "Clarity", "Comfort", "Conflict", "Confusion", "Connection", "Creativity", "Curiosity", "Danger",
    "Darkness", "Death", "Deception", "Despair", "Discovery", "Doubt", "Echoes", "Embrace", "Emotion", "Energy",
    "Escape", "Expectation", "Fantasy", "Fear", "Flight", "Fortune", "Fragmented", "Freedom", "Future", "Growth",
    "Guidance", "Harmony", "Healing", "Hope", "Illusion", "Insight", "Introspection", "Isolation", "Journey", "Joy",
    "Knowledge", "Light", "Loss", "Love", "Luck", "Memory", "Mystery", "Nightmare", "Obsession", "Peace",
    "Perception", "Power", "Premonition", "Protection", "Purpose", "Question", "Reality", "Rebirth", "Reflection", "Regret",
    "Resilience", "Resolution", "Revelation", "Risk", "Sacrifice", "Sadness", "Safety", "Secrets", "Shadow", "Silence",
    "Solitude", "Sorrow", "Struggle", "Surprise", "Symbolism", "Temptation", "Thoughts", "Transformation", "Truth", "Uncertainty",
    "Understanding", "Vision", "Void", "Warning", "Whispers", "Wisdom", "Wonder", "Worry", "Youth"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Vision] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Powers Descriptors (1d100)
vim.api.nvim_create_user_command('InsertPowerDescriptor', function()
local options = {
    "Absorb", "Adversity", "Alter", "Animate", "Assist", "Attach", "Attack", "Block", "Body", "Change",
    "Chemical", "Cold", "Colorful", "Combat", "Combine", "Communicate", "Control", "Cosmetic", "Create", "Creature",
    "Damage", "Dark", "Death", "Deevolve", "Defense", "Delay", "Destroy", "Diminish", "Dimensions", "Disrupt",
    "Distance", "Duplicate", "Electricity", "Emission", "Enemies", "Enhance", "Environment", "Explosion", "Extra", "Find",
    "Fire", "Harm", "Heal", "Heat", "Help", "Hide", "Illusion", "Imbue", "Immunity", "Increase",
    "Information", "Light", "Limb", "Limited", "Location", "Magic", "Major", "Manipulate", "Matter", "Mental",
    "Minor", "Natural", "Object", "Others", "Physical", "Poison", "Power", "Protect", "Radius", "Repair",
    "Resistance", "Reveal", "Self", "Sense", "Spirit", "Stealth", "Strange", "Strength", "Take", "Technology",
    "Time", "Transform", "Trap", "Travel", "Weapon", "Weather"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Power] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Scavenging Results (1d100)
vim.api.nvim_create_user_command('InsertScavengingDescriptor', function()
local options = {
    "Abundance", "Activity", "Adversity", "Animal", "Assist", "Barrier", "Blaze", "Break", "Clean", "Comfort",
    "Communicate", "Concealment", "Container", "Control", "Damaged", "Dangerous", "Disagreeable", "Disgusting", "Drink", "Energy",
    "Extravagance", "Fight", "Fresh", "Friendship", "Good", "Gratifying", "Harm", "Helpful", "Hide", "Imbue",
    "Important", "Information", "Large", "Lavish", "Lean", "Less", "Mechanical", "Medical", "Misfortune", "Mysterious",
    "New", "Normal", "Odd", "Offensive", "Overpowering", "Pleasurable", "Possessions", "Powerful", "Punishing", "Rare",
    "Reassuring", "Repairable", "Rough", "Scary", "Simple", "Small", "Strange", "Strong", "Supply", "Technology",
    "Tool", "Travel", "Trouble", "Unusual", "Valuable", "Waste", "Weapon", "Weather"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Scavenging] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Smells Descriptors (1d100)
vim.api.nvim_create_user_command('InsertSmellDescriptor', function()
local options = {
    "Acrid", "Animal", "Antiseptic", "Aromatic", "Artificial", "Attractive", "Bad", "Bizarre", "Burnt", "Chemical",
    "Comforting", "Cooking", "Decrepit", "Delicious", "Delightful", "Dirty", "Disagreeable", "Disgusting", "Earthy", "Electrical",
    "Evocative", "Faded", "Familiar", "Fishy", "Floral", "Flowery", "Foul", "Fresh", "Fruity", "Good",
    "Grassy", "Gratifying", "Herbal", "Humid", "Intoxicating", "Inviting", "Lacking", "Laden", "Malodorous", "Meaningful",
    "Medicinal", "Metallic", "Mildew", "Moist", "Mossy", "Musky", "Musty", "Mysterious", "Natural", "Odorous"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Smell] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Sounds Descriptors (1d100)
vim.api.nvim_create_user_command('InsertSoundDescriptor', function()
local options = {
    "Ambient", "Booming", "Buzzing", "Chiming", "Clashing", "Clicking", "Crackling", "Creeping", "Crunching", "Echoing",
    "Eerie", "Explosive", "Fluttering", "Grinding", "Hissing", "Howling", "Melodic", "Muffled", "Murmuring", "Rattling",
    "Resonant", "Roaring", "Rustling", "Scraping", "Screaming", "Sizzling", "Snapping", "Soft", "Squeaking", "Thudding"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Sound] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Spell Effect Descriptors (1d100)
vim.api.nvim_create_user_command('InsertSpellDescriptor', function()
local options = {
    "Blazing", "Binding", "Blessing", "Chaos", "Cleansing", "Conjuring", "Corrupting", "Decaying", "Defensive", "Destructive",
    "Enhancing", "Healing", "Illusory", "Inflicting", "Lighting", "Magnetic", "Mysterious", "Protecting", "Summoning", "Transmuting"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Spell] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})

-- Starship Descriptors (1d100)
vim.api.nvim_create_user_command('InsertStarshipDescriptor', function()
local options = {
    "Advanced", "Alien", "Damaged", "Elegant", "Gigantic", "Glowing", "Heavily Armed", "Industrial", "Minimalist", "Mysterious",
    "Rugged", "Silent", "Sleek", "Technological", "Terrifying", "Unstable", "Unusual", "Well-maintained", "Xenotech", "Zippy"
}
math.randomseed(os.time())
local result = math.random(1, #options)
vim.api.nvim_put({'>[!Starship] '}, 'c', true, true)
vim.api.nvim_put({'> '}, 'l', true, true)
vim.api.nvim_put({options[result]}, 'c', true, true)
end, {})
