-- Stone things

minetest.register_node("gc_default:stone", {
    description = "Stone",
    tiles = {"gc_stone.png"},
    is_ground_content = true,
    groups = {
        cracky = 3,
        stone = 1
    }
})

minetest.register_node("gc_default:cobblestone", {
    description = "Cobblestone",
    tiles = {"gc_cobblestone.png"},
    groups = {
        cracky = 3,
        stone = 1
    }
})

-- Dirt things

minetest.register_node("gc_default:dirt", {
    description = "Dirt",
    tiles = {"gc_dirt.png"},
    is_ground_content = true,
    groups = {
        crumbly = 3,
        soil = 1
    }
})

minetest.register_node("gc_default:grass_block", {
    description = "Grass block",
    tiles = {
        "gc_grass_block_top.png",
        "gc_dirt.png",
        "gc_grass_block_side.png",
        "gc_grass_block_side.png"
    },
    groups = {
        crumbly = 3,
        soil = 1
    }
})