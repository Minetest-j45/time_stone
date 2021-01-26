minetest.register_craftitem("time_stone:day_stone", {
    description = ("Used to turn time to day"),
    inventory_image = "sun_inv.png",
    stack_max = 1,
    wield_image = "sun_wield.png",
    wield_scale = 1,
    on_use = function(itemstack, user, pointed_thing)
      minetest.set_timeofday(0.25)
      itemstack:take_item()
      return itemstack
end,
})

minetest.register_craft({
    output = "time_stone:day_stone",
    recipe = {
        {"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"},
        {"default:obsidian_shard", "default:mese_block", "default:obsidian_shard"},
        {"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"},
    }
})
minetest.register_craftitem("time_stone:night_stone", {
    description = ("Used to turn time to night"),
    inventory_image = "moon_inv.png",
    stack_max = 1,
    wield_image = "moon_wield.png",
    wield_scale = 1,
    on_use = function(itemstack, user, pointed_thing)
      minetest.set_timeofday(1.00)
      itemstack:take_item()
      return itemstack
end,
})


minetest.register_craft({
    output = "time_stone:night_stone",
    recipe = {
        {"default:mese_crystal", "default:mese_crystal", "default:mese_crystal"},
        {"default:mese_crystal", "default:obsidian", "default:mese_crystal"},
        {"default:mese_crystal", "default:mese_crystal", "default:mese_crystal"},
    }
})