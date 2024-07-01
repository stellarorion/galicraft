minetest.register_node("core:stone", {
    description = "Stone",
    tiles = {"core_stone.png"},
    is_ground_content = true,
    groups = {cracky = 3},
    drop = "core:stone"
})

minetest.register_node("core:dirt", {
    description = "Dirt",
    tiles = {"core_dirt.png"},
    is_ground_content = false,
    groups = {crumbly = 3},
    drop = "core:dirt"
})

minetest.register_node("core:grass_dirt", {
    description = "Grass dirt",
    tiles = {
        "core_grass_dirt_top.png",
        "core_dirt.png",
        "core_grass_dirt_sides.png",
        "core_grass_dirt_sides.png",
        "core_grass_dirt_sides.png",
        "core_grass_dirt_sides.png",
    },
    is_ground_content = false,
    groups = {crumbly = 3},
    drop = "core:grass_dirt"
})

minetest.register_node("core:candy_dirt", {
    description = "Candy dirt",
    tiles = {
        "core_candy_dirt_top.png",
        "core_dirt.png",
        "core_candy_dirt_sides.png",
        "core_candy_dirt_sides.png",
        "core_candy_dirt_sides.png",
        "core_candy_dirt_sides.png",
    },
    is_ground_content = false,
    groups = {crumbly = 3},
    drop = "core:candy_dirt"
})

-- Water





























-- Lava