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

-- Liquid things

minetest.register_node("gc_default:water_source", {
	description = ("Water Source"),
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "gc_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3,
			},
		},
		{
			name = "gc_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "gc_default:water_flowing",
	liquid_alternative_source = "gc_default:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1},
})

minetest.register_node("gc_default:water_flowing", {
	description = ("Flowing Water"),
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"gc_water.png"},
	special_tiles = {
		{
			name = "gc_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2,
			},
		},
		{
			name = "gc_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "gc_default:water_flowing",
	liquid_alternative_source = "gc_default:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
})

-- Lava things

minetest.register_node("gc_default:lava_source", {
	description = ("Lava Source"),
	drawtype = "liquid",
	tiles = {
		{
			name = "gc_lava_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "gc_lava_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	paramtype = "light",
	light_source = 10,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "gc_default:lava_flowing",
	liquid_alternative_source = "gc_default:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1},
})

minetest.register_node("gc_default:lava_flowing", {
	description = ("Flowing Lava"),
	drawtype = "flowingliquid",
	tiles = {"gc_lava.png"},
	special_tiles = {
		{
			name = "gc_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "gc_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = 10,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "gc_default:lava_flowing",
	liquid_alternative_source = "gc_default:lava_source",
	liquid_viscosity = 10,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1,
		not_in_creative_inventory = 1},
})