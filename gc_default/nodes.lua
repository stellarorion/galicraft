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