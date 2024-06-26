-- Cobblestone generator

minetest.register_abm({
    nodenames = {"gc_default:lava_flowing"},
    neighbors = {"gc_default:water_flowing"},
    interval = 5,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
        minetest.set_node(pos, {name = "gc_default:stone"})
    end
})

-- Lava = {"bye, bye"}

minetest.register_abm({
    nodenames = {"gc_default:lava_source"},
    neighbors = {"gc_default:water_source", "gc_default:water_flowing"},
    interval = 5,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
        local directions = {
            {x = 0, y = 1, z = 0},  -- above
            {x = 0, y = -1, z = 0}, -- below
            {x = 1, y = 0, z = 0},  -- east
            {x = -1, y = 0, z = 0}, -- west
            {x = 0, y = 0, z = 1},  -- north
            {x = 0, y = 0, z = -1}, -- south
        }

        for _, dir in ipairs(directions) do
            local neighbor_pos = {
                x = pos.x + dir.x,
                y = pos.y + dir.y,
                z = pos.z + dir.z
            }
            local neighbor_node = minetest.get_node(neighbor_pos)
            if neighbor_node.name == "gc_default:water_source" or neighbor_node.name == "gc_default:water_flowing" then
                minetest.set_node(pos, {name = "gc_default:dirt"})
                return  -- Exit the function once we have turned the lava into obsidian
            end
        end
    end
})

-- This spreads grass to dirt (grass block to dirt)

minetest.register_abm({
    nodenames = {"gc_default:dirt"},
    neighbors = {"gc_default:grass_block"},
    interval = 120,
    chance = 2,
    action = function(pos, node, active_object_count, active_object_count_wider)
        minetest.set_node(pos, {name = "gc_default:grass_block"})
    end
})
