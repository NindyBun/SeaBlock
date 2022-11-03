#loader contenttweaker

import mods.contenttweaker.fluid.FluidBuilder;
import mods.contenttweaker.item.ItemBuilder;

var names as string[] = [
    "red",
    "green",
    "blue",
    "purple",
    "yellow",
    "white",
];

new ItemBuilder().build("glass_vile");
new ItemBuilder().build("priming_dust");

for name in names {
    new ItemBuilder().build(name+"_vile");
    new ItemBuilder().build(name+"_primer");
}


new FluidBuilder(false, 0xed0000).build("liquid_red");
new FluidBuilder(false, 0x00eb04).build("liquid_green");
new FluidBuilder(false, 0x00d4eb).build("liquid_blue");
new FluidBuilder(false, 0x8900eb).build("liquid_purple");
new FluidBuilder(false, 0xffeb3b).build("liquid_yellow");
new FluidBuilder(false, 0xfafafa).build("liquid_white");