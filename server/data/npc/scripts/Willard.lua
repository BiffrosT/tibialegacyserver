dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'two handed sword'}, 2377, 450)
shopModule:addSellableItem({'battle axe'}, 2378, 80)
shopModule:addSellableItem({'dagger'}, 2379, 2)
shopModule:addSellableItem({'hand axe'}, 2380, 4)
shopModule:addSellableItem({'halberd'}, 2381, 400)
shopModule:addSellableItem({'spike sword'}, 2383, 240)
shopModule:addSellableItem({'rapier'}, 2384, 5)
shopModule:addSellableItem({'sabre'}, 2385, 12)
shopModule:addSellableItem({'spear'}, 2389, 3)
shopModule:addSellableItem({'morning star'}, 2394, 90)
shopModule:addSellableItem({'short sword'}, 2406, 10)
shopModule:addSellableItem({'battle hammer'}, 2417, 120)
shopModule:addSellableItem({'clerical mace'}, 2423, 170)
shopModule:addSellableItem({'barbarian axe'}, 2429, 185)
shopModule:addSellableItem({'leather armor'}, 2467, 12)
shopModule:addSellableItem({'chain armor'}, 2464, 70)
shopModule:addSellableItem({'brass armor'}, 2465, 150)
shopModule:addSellableItem({'plate armor'}, 2463, 400)
shopModule:addSellableItem({'chain legs'}, 2648, 25)
shopModule:addSellableItem({'leather helmet'}, 2461, 4)
shopModule:addSellableItem({'iron helmet'}, 2459, 150)
shopModule:addSellableItem({'chain helmet'}, 2458, 17)
shopModule:addSellableItem({'steel helmet'}, 2457, 190)
shopModule:addSellableItem({'wooden shield'}, 2512, 5)
shopModule:addSellableItem({'battle shield'}, 2513, 95)
shopModule:addSellableItem({'steel shield'}, 2509, 80)
shopModule:addSellableItem({'viking shield'}, 2531, 85)
shopModule:addSellableItem({'sword'}, 2376, 25)
shopModule:addSellableItem({'mace'}, 2398, 30)
shopModule:addSellableItem({'axe'}, 2386, 7)
shopModule:addSellableItem({'club'}, 2382, 1)

shopModule:addBuyableItem({'dagger'}, 2379, 5)
shopModule:addBuyableItem({'hand axe'}, 2380, 8)
shopModule:addBuyableItem({'spear'}, 2389, 10)
shopModule:addBuyableItem({'rapier'}, 2384, 15)
shopModule:addBuyableItem({'barbarian axe'}, 2429, 590)
shopModule:addBuyableItem({'sabre'}, 2385, 35)
shopModule:addBuyableItem({'clerical mace'}, 2423, 540)
shopModule:addBuyableItem({'mace'}, 2398, 90)
shopModule:addBuyableItem({'battle hammer'}, 2417, 350)
shopModule:addBuyableItem({'crossbow'}, 2455, 500)
shopModule:addBuyableItem({'bow'}, 2456, 400)
shopModule:addBuyableItem({'arrow'}, 2544, 2)
shopModule:addBuyableItem({'bolt'}, 2543, 3)
shopModule:addBuyableItem({'throwing star'}, 2399, 50)
shopModule:addBuyableItem({'chain armor'}, 2464, 200)
shopModule:addBuyableItem({'brass armor'}, 2465, 450)
shopModule:addBuyableItem({'leather armor'}, 2467, 35)
shopModule:addBuyableItem({'chain helmet'}, 2458, 52)
shopModule:addBuyableItem({'leather helmet'}, 2461, 12)
shopModule:addBuyableItem({'steel shield'}, 2509, 240)
shopModule:addBuyableItem({'wooden shield'}, 2512, 15)
shopModule:addBuyableItem({'viking shield'}, 2531, 260)
shopModule:addBuyableItem({'chain legs'}, 2648, 80)
shopModule:addBuyableItem({'sword'}, 2376, 85)
shopModule:addBuyableItem({'axe'}, 2386, 20)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Willard."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the blacksmith of castle Bloodrock."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hail to the King! He's our benevolent protector."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hail to the King! He's our benevolent protector."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I supply them with all they need."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would be honored if it's one of my blades that one day delivers him his punishment."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Adventurers search for this blade all over the world. Even here."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A fine city, but I love the peace of Edron more."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's my dream that one day the whole world will profit from the Thaian governance."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If the king sees the time is right, he will certainly start a campaign to reclaim what belongs to Thais."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Edron is a fine city to live in."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Rumors are too sinister things that a true warrior would care for them."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Rumors are too sinister things that a true warrior would care for them."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell weapons, armors, helmets, and shields."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell weapons, armors, helmets, and shields."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell weapons, armors, helmets, and shields."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are weapons, ammunition, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have hand axes, axes, barbarian axes, spears, maces, clerical maces, battle hammers, swords, rapiers, daggers, sabres, bows, and crossbows. What's your choice?"})
keywordHandler:addKeyword({'ammunition'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have arrows for bows and bolts for crossbows. What do you want?"})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather helmets and chain helmets. What do you want?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather, chain, and brass armor. What do you need?"})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling wooden shields, steel shields, and viking shields. What do you want?"})
keywordHandler:addKeyword({'trousers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now it is |TIME|."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())