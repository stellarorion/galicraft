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

minetest.register_node("core:water_source", {
	description = ("Water Source"),
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "core_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3,
			},
		},
		{
			name = "core_water_source_animated.png",
			backface_culling = false,
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
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "core:water_flowing",
	liquid_alternative_source = "core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
})

minetest.register_node("core:water_flowing", {
	description = ("Flowing Water"),
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"core_water.png"},
	special_tiles = {
		{
			name = "core_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2,
			},
		},
		{
			name = "core_water_flowing_animated.png",
			backface_culling = false,
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
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
    walkable = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "core:water_flowing",
	liquid_alternative_source = "core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
})

-- Lava

minetest.register_node("core:lava_source", {
	description = ("Lava Source"),
	drawtype = "liquid",
	tiles = {
		{
			name = "core_lava_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "core_lava_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	paramtype = "light",
	light_source = core.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "core:lava_flowing",
	liquid_alternative_source = "core:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
})

minetest.register_node("core:lava_flowing", {
	description = ("Flowing Lava"),
	drawtype = "flowingliquid",
	tiles = {"core_lava.png"},
	special_tiles = {
		{
			name = "core_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "core_lava_flowing_animated.png",
			backface_culling = false,
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
	light_source = core.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "core:lava_flowing",
	liquid_alternative_source = "core:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
})