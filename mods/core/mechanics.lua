-- Game mechanics

-- Grass spreading (grass_dirt to dirt)

minetest.register_abm({
    label = "Grass spread",
    nodenames = {"core:dirt"},
    neighbors = {"core:grass_dirt"},
    interval = 120,
    chance = 3,
    action = function (pos, node, active_object_count, active_object_count_wider)
        local neighbors = {
            {x = pos.x + 1, y = pos.y, z = pos.z},
            {x = pos.x - 1, y = pos.y, z = pos.z},
            {x = pos.x, y = pos.y, z = pos.z + 1},
            {x = pos.x, y = pos.y, z = pos.z - 1}
        }

        local above_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
        local above_node = minetest.get_node(above_pos)

        if above_node.name ~= "air" then
            return
        end

        for _, p in ipairs(neighbors) do
            if minetest.get_node(p).name == "core:grass_dirt" then
                minetest.set_node(pos, {name = "core:grass_dirt"})
                break
            end
        end
    end
})
