
minetest.register_alias("mapgen_stone", "gc_default:stone")
minetest.register_alias("mapgen_water_source", "gc_default:water_source")
minetest.register_alias("mapgen_river_water_source", "gc_default:water_source")

minetest.register_biome({
    name = "grasslands1",
    node_top = "gc_default:grass_block",
    depth_top = 1,
    node_filler = "gc_default:dirt",
    depth_filler = 60,
    y_max = 500,
    y_min = -3,
    heat_point = 10,
    humidity_point = 10,
})