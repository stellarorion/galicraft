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
        "basic_grass_dirt_top.png",
        "basic_dirt.png",
        "basic_grass_dirt_sides.png",
        "basic_grass_dirt_sides.png",
        "basic_dirt.png"
    },
    is_ground_content = false,
    groups = {crumbly = 3},
    drop = "core:grass_dirt"
})