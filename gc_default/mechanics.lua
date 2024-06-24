-- Cobblestone generator

minetest.register_abm({
    nodenames = "gc_default:lava_flowing",
    neighbors = "gc_default:water_flowing",
    interval = 5,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
        local pos = {x = pos.x, y = pos.y, z = pos.z}
        minetest.set_node(pos, {name = "gc_default:stone"})
    end
})

-- Lava = {"bye, bye"}

minetest.register_abm({
    nodenames = "gc_default:lava_source",
    neighbors = "gc_default:water_source", "gc_default:water_flowing",
    interval = 5,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
        local pos = {x = pos.x, y = pos.y, z = pos.z}
        minetest.set_node(pos, {name = "default:obsidian"})
    end
})

