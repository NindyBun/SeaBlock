#Loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;

var ores as string[] = [
    "iron_crystal",
    "iron_shard",
    "iron_fragment",
    "iron_dirty_dust",

    "gold_crystal",
    "gold_shard",
    "gold_fragment",
    "gold_dirty_dust",

    "copper_crystal",
    "copper_shard",
    "copper_dirty_dust",

    "lead_crystal",
    "lead_shard",
    "lead_dirty_dust",

    "tin_crystal",
    "tin_shard",
    "tin_dirty_dust",

    "osmium_crystal",
    "osmium_shard",
    "osmium_dirty_dust",

    "uranium_crystal",
    "uranium_shard",
    "uranium_dirty_dust",

    "copper_silver_alloy",
    "lead_diamond_alloy",
    "tin_silver_alloy"
];

for name in ores {
    new ItemBuilder().build(name);
}