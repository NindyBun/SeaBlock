#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;

var geode as string[] = [
    "common",
    "uncommon",
    "rare"
];

for name in geode {
    new ItemBuilder().build(name+"_geode");
}