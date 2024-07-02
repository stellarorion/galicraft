local function set_speed(player)
    local name = player:get_player_name()
    local controls = player:get_player_control()

    if controls.aux1 then
        player:set_physics_override({speed = 1.8})
        elseif not controls.aux1 then
            player:set_physics_override({speed = 1})
    end
end

minetest.register_tool(":", {
    description = "My Tool",
    inventory_image = "wieldhand.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 1,
        groupcaps = {
            crumbly = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=1.60, [2]=1.20, [3]=0.80 }
            },
        },
        damage_groups = {fleshy=2},
    },
})


minetest.register_globalstep(function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
        set_speed(player)
    end
end)