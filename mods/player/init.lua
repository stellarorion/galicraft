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
    description = "Hand",
    inventory_image = "core_wieldhand.png",
    tool_capabilities = {
        full_punch_interval = 1,
        max_drop_level = 1,
        groupcaps = {
            crumbly = {
                maxlevel = 2,
                uses = 0,
                times = { [1]=1.60, [2]=1.20, [3]=1.2 }
            },
            cracky = {
                maxlevel = 3,
                uses = 0,
                times = {[1] = 5, [2] = 10, [3] = 20}
            }
        },
        damage_groups = {fleshy=2},
    },
})


minetest.register_globalstep(function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
        set_speed(player)
    end
end)