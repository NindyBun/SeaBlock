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
    "tin_dirty_dust"
];

for name in ores {
    new ItemBuilder().build(name);
}