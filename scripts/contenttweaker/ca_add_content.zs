#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;
import mods.createautomated.item.DrillHeadBuilder;

new ItemBuilder()
    .withType<DrillHeadBuilder>()
    .durability(100)
    .partial("block/iron_drill")
    .build("iron_drill");
    
new ItemBuilder()
    .withType<DrillHeadBuilder>()
    .durability(250)
    .partial("block/diamond_drill")
    .build("diamond_drill");

new ItemBuilder()
    .withType<DrillHeadBuilder>()
    .durability(500)
    .build("steel_drill");

