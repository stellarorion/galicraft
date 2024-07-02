-- Define the inventory module
inventory = {}

-- Function to get the custom formspec
function inventory.get_formspec()
    local formspec = table.concat({
    "size[8,7.5]",
    "image[1,0.6;1,2;player.png]",
    "list[current_player;main;0,3.5;8,4;]",
    "list[current_player;craft;3,0;3,3;]",
    "list[current_player;craftpreview;7,1;1,1;]",
    })
    return formspec
end

-- Function to set the custom formspec for a player
function inventory.set_player_inventory(player)
    player:set_inventory_formspec(inventory.get_formspec())
end

-- Register a callback for when a player joins the game
minetest.register_on_joinplayer(function(player)
    inventory.set_player_inventory(player)
end)
