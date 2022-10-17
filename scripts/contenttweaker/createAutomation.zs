#Loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;
import mods.createautomated.item.DrillHeadBuilder;

new ItemBuilder()
    .withType<DrillHeadBuilder>()
    .durability(9898)
    .partial("block/diamond_drill")
    .build("diamond_drill");