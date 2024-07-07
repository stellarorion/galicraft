local liquids = {
    {"core:water_source", "bucket:water_bucket"},
    {"core:lava_source", "bucket:lava_bucket"},
}

minetest.register_craftitem("bucket:empty_bucket", {
    description = "Empty Bucket",
    inventory_image = "bucket_empty_bucket.png",
    liquids_pointable = true,
    on_place = function(itemstack, placer, pointed_thing)
        local pos = pointed_thing.under
        local node = minetest.get_node(pos)

for _, liquid in ipairs(liquids) do
    if node.name == liquid[1] then
        minetest.remove_node(pos)
        local new_stack = liquid[2]
        itemstack:replace(new_stack)
    end
end

    return itemstack

end
})

minetest.register_craftitem("bucket:water_bucket", {
    description = "Water bucket",
    inventory_image = "bucket_water_bucket.png",
    liquids_pointable = false,
    on_place = function (itemstack, placer, pointed_thing)
        local pos = pointed_thing.above

        minetest.set_node(pos, {name = "core:water_source"})

        local new_stack = "bucket:empty_bucket"
        itemstack:replace(new_stack)

        return itemstack
    end
})

minetest.register_craftitem("bucket:lava_bucket", {
    description = "Lava bucket",
    inventory_image = "bucket_lava_bucket.png",
    liquids_pointable = false,
    on_place = function (itemstack, placer, pointed_thing)
        local pos = pointed_thing.above
        minetest.set_node(pos, {name = "core:lava_source"})

        local new_stack = "bucket:empty_bucket"
        itemstack:replace(new_stack)

        return itemstack
    end
})