
minetest.register_alias("mapgen_stone", "gc_default:stone")

minetest.register_biome({
    name = "grasslands1",
    node_top = "gc_default:grass_block",
    depth_top = 10,
    node_filler = "gc_default:dirt",
    depth_filler = 200,
    y_max = 1000,
    y_min = -3,
    heat_point = 50,
    humidity_point = 50,
})