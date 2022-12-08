#loader contenttweaker
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.block.BlockBuilder;

new ItemBuilder().build("clay_rod_cast");
new ItemBuilder().build("rod_cast");
new ItemBuilder().build("empty_ender_pearl");
new ItemBuilder().build("capsule");

new BlockBuilder(<blockmaterial:earth>).build("base");
new BlockBuilder(<blockmaterial:earth>).build("item_in");
new BlockBuilder(<blockmaterial:earth>).build("item_out");
new BlockBuilder(<blockmaterial:earth>).build("fluid_in");
new BlockBuilder(<blockmaterial:earth>).build("fluid_out");
new BlockBuilder(<blockmaterial:earth>).build("energy_in");
new BlockBuilder(<blockmaterial:earth>).build("create_in");