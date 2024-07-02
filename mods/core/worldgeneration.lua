-- Define bare minimum blocks for the world generation
minetest.register_alias("mapgen_stone", "core:stone")
minetest.register_alias("mapgen_water_source", "core:water_source")
minetest.register_alias("mapgen_lava_source", "core:lava_source")

minetest.register_biome({
    name = "candylands",
    node_top = "core:grass_dirt",
    depth_top = 1,
    node_filler = "core:dirt",
    depth_filler = 3,
    y_max = 1000,
    y_min = -3,
    heat_point = 50,
    humidity_point = 50,
})