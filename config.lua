CFG = {
        ItemImgFolder = 'ox_inventory/web/images/',
        RarityChance = { -- Lower is considered rarer
            ["Common"] = 80,
            ["Uncommon"] = 50,
            ["Rare"] = 30,
            ["Epic"] = 15,
            ["Legendary"] = 1,
        },
        CaseList = {
            ["caisse_gold"] = {
                Title = "Caisse Gold",
                Color = "#FFFFFF",
                Items = {
                    {name = "Weed BlueBerry", item = "weed_blueberry", amount = 10, rarity = "Uncommon", img = "https://cdn.discordapp.com/attachments/1218707488707182765/1326349531364982946/WEAPON_PISTOL_MK2-2.png?ex=677f1ac2&is=677dc942&hm=5717f98d772df5fc37433cb078a831281d8d42ffebc84de57e6e0796906289ec&"},
                    {name = "Weed OG", item = "weed_og", amount = 10, rarity = "Common", img = "https://media.discordapp.net/attachments/1218707488707182765/1326349531364982946/WEAPON_PISTOL_MK2-2.png?ex=677f1ac2&is=677dc942&hm=5717f98d772df5fc37433cb078a831281d8d42ffebc84de57e6e0796906289ec&=&format=webp&quality=lossless&width=140&height=140"},
                    {name = "Argent 5000x", item = "money", amount = 5000, rarity = "Rare", img = "https://media.discordapp.net/attachments/1218707488707182765/1326349531364982946/WEAPON_PISTOL_MK2-2.png?ex=677f1ac2&is=677dc942&hm=5717f98d772df5fc37433cb078a831281d8d42ffebc84de57e6e0796906289ec&=&format=webp&quality=lossless&width=140&height=140"},
                    {name = "Chips", item = "chips", amount = 10, rarity = "Common", img = "https://media.discordapp.net/attachments/1218707488707182765/1326349531364982946/WEAPON_PISTOL_MK2-2.png?ex=677f1ac2&is=677dc942&hm=5717f98d772df5fc37433cb078a831281d8d42ffebc84de57e6e0796906289ec&=&format=webp&quality=lossless&width=140&height=140"},
                    {name = "Eau", item = "water", amount = 10, rarity = "Common", img = "https://media.discordapp.net/attachments/1218707488707182765/1326349531364982946/WEAPON_PISTOL_MK2-2.png?ex=677f1ac2&is=677dc942&hm=5717f98d772df5fc37433cb078a831281d8d42ffebc84de57e6e0796906289ec&=&format=webp&quality=lossless&width=140&height=140"},
                    {name = "Munition9m", item = "ammo-9", amount = 10, rarity = "Rare", img = "https://media.discordapp.net/attachments/1218707488707182765/1326349531364982946/WEAPON_PISTOL_MK2-2.png?ex=677f1ac2&is=677dc942&hm=5717f98d772df5fc37433cb078a831281d8d42ffebc84de57e6e0796906289ec&=&format=webp&quality=lossless&width=140&height=140"},
                    {name = "Glock 17", item = "WEAPON_PISTOL_MK2", amount = 1, rarity = "Legendary", img = "https://media.discordapp.net/attachments/1218707488707182765/1326349531364982946/WEAPON_PISTOL_MK2-2.png?ex=677f1ac2&is=677dc942&hm=5717f98d772df5fc37433cb078a831281d8d42ffebc84de57e6e0796906289ec&=&format=webp&quality=lossless&width=140&height=140"},
                },
            },
        },
    
       ChatNotify = function(message)
            TriggerClientEvent('chat:addMessage', -1, {
                template = '<div> <b>WTC Caisse</b> {0} </div>',
                args = {message}
            })
       end
    }
    