# xd-karpuz
QB-Core Uyumlu Karpuz Mesleği
Discord: https://discord.gg/8Cs56rT9Gu

"qb-core\shared\items.lua" Klasörüne aşağıdaki itemleri eklemeniz gerekmektedir.
-- xd meslekler
	["karpuz"] 		 			 = {["name"] = "karpuz",       				["label"] = "Karpuz",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "watermelon.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Taptaze Dalından Karpuz", ['thirst'] = math.random(35, 54) ,['created'] = nil, ['decay'] = 14.0},
	["karpuzsuyu"] 		 		 = {["name"] = "karpuzsuyu",       			["label"] = "Karpuz Suyu",	["weight"] = 200, 		["type"] = "item", 		["image"] = "watermelon.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Taptaze Dalından Koparılmış Karpuzun Suyu", ['thirst'] = math.random(35, 54) ,['created'] = nil, ['decay'] = 14.0},
