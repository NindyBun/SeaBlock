import crafttweaker.api.item.IItemStack;
import crafttweaker.api.fluid.IFluidStack;

craftingTable.addShaped("recipe.crafting.glass_vile", <item:contenttweaker:glass_vile>*3, [
    [<item:minecraft:glass>, <item:minecraft:air>, <item:minecraft:glass>],
    [<item:minecraft:glass>, <item:minecraft:air>, <item:minecraft:glass>],
    [<item:minecraft:air>, <item:minecraft:glass>, <item:minecraft:air>],
]);

var liquid_science as IFluidStack[] = [
    <fluid:contenttweaker:liquid_red>,
    <fluid:contenttweaker:liquid_green>,
    <fluid:contenttweaker:liquid_blue>,
    <fluid:contenttweaker:liquid_purple>,
    <fluid:contenttweaker:liquid_yellow>,
    <fluid:contenttweaker:liquid_white>
];

var liquid_phase as string[] = [
    "red_phase_1",
    "green_phase_2",
    "blue_phase_5",
    "purple_phase_8",
    "yellow_phase_11",
    "white_phase_12"
];

var science as IItemStack[] = [
    <item:contenttweaker:red_vile>,
    <item:contenttweaker:green_vile>,
    <item:contenttweaker:blue_vile>,
    <item:contenttweaker:purple_vile>,
    <item:contenttweaker:yellow_vile>,
    <item:contenttweaker:white_vile>
];

var create_liquid_science as IItemStack[][] = [
    [<item:emendatusenigmatica:iron_gear>, <item:emendatusenigmatica:copper_plate>, <item:minecraft:air>],
    [<item:immersiveengineering:conveyor_basic>, <item:emendatusenigmatica:steel_gear>, <item:minecraft:air>],
    [<item:immersiveengineering:rs_engineering>, <item:emendatusenigmatica:invar_gear>, <item:create:precision_mechanism>],
    [<item:emendatusenigmatica:lumium_gear>, <item:emendatusenigmatica:signalum_gear>, <item:emendatusenigmatica:enderium_gear>],
    [<item:mekanism:hdpe_pellet>, <item:mekanism:alloy_reinforced>, <item:mekanism:yellow_cake_uranium>],
    [<item:mekanism:pellet_polonium>, <item:mekanism:reprocessed_fissile_fragment>, <item:mekanism:pellet_antimatter>]
];

var mix_science_duration as int[] = [
    /* 600, 1200, 2400, 3600, 4800, 6000 ticks*/
    /* 30 ,  60,  120,  180,  240,  300  seconds*/
       456,  625,  625,  625,  625,  792
];

for i, vile in science {
    <recipetype:create:filling>.addRecipe("recipe.create.filling.science/"+i, science[i], <item:contenttweaker:glass_vile>, liquid_science[i]*1000);
}

<recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_red/0", "none", <fluid:minecraft:water>.withTag({phase: "red_phase_1"})*1000, [<item:contenttweaker:red_primer>], [<fluid:minecraft:water>*1000], mix_science_duration[0]);
<recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_green/0", "none", <fluid:minecraft:water>.withTag({phase: "green_phase_1"})*1000, [<item:contenttweaker:green_primer>], [<fluid:minecraft:water>*1000], mix_science_duration[1]);
<recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_green/1", "none", <fluid:minecraft:water>.withTag({phase: "green_phase_2"})*1000, [<item:contenttweaker:green_primer>], [<fluid:minecraft:water>.withTag({phase: "green_phase_1"})*1000], mix_science_duration[1]);
<recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_blue/0", "none", <fluid:minecraft:water>.withTag({phase: "blue_phase_1"})*1000, [<item:contenttweaker:blue_primer>], [<fluid:minecraft:water>*1000], mix_science_duration[2]);
<recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_purple/0", "none", <fluid:minecraft:water>.withTag({phase: "purple_phase_1"})*1000, [<item:contenttweaker:purple_primer>], [<fluid:minecraft:water>*1000], mix_science_duration[3]);
<recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_yellow/0", "none", <fluid:minecraft:water>.withTag({phase: "yellow_phase_1"})*1000, [<item:contenttweaker:yellow_primer>], [<fluid:minecraft:water>*1000], mix_science_duration[4]);
<recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_white/0", "none", <fluid:minecraft:water>.withTag({phase: "white_phase_1"})*1000, [<item:contenttweaker:white_primer>], [<fluid:minecraft:water>*1000], mix_science_duration[5]);

mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_red/0");
mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_green/0");
mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_green/1");
mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_blue/0");
mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_purple/0");
mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_yellow/0");
mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_white/0");

for i in 1 .. 6 {
    <recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_blue/"+i, "none", <fluid:minecraft:water>.withTag({phase: "blue_phase_"+(i+1)})*1000, [<item:contenttweaker:blue_primer>], [<fluid:minecraft:water>.withTag({phase: "blue_phase_"+i})*1000], mix_science_duration[2]);
    mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_blue/"+i);
}

for i in 1 .. 9 {
    <recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_purple/"+i, "none", <fluid:minecraft:water>.withTag({phase: "purple_phase_"+(i+1)})*1000, [<item:contenttweaker:purple_primer>], [<fluid:minecraft:water>.withTag({phase: "purple_phase_"+i})*1000], mix_science_duration[3]);
    mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_purple/"+i);
}

for i in 1 .. 12 {
    <recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_yellow/"+i, "none", <fluid:minecraft:water>.withTag({phase: "yellow_phase_"+(i+1)})*1000, [<item:contenttweaker:yellow_primer>], [<fluid:minecraft:water>.withTag({phase: "yellow_phase_"+i})*1000], mix_science_duration[4]);
    mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_yellow/"+i);
}

for i in 1 .. 13 {
    <recipetype:create:mixing>.addRecipe("recipe.create.mixing.science_phase_white/"+i, "none", <fluid:minecraft:water>.withTag({phase: "white_phase_"+(i+1)})*1000, [<item:contenttweaker:white_primer>], [<fluid:minecraft:water>.withTag({phase: "white_phase_"+i})*1000], mix_science_duration[5]);
    mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science_phase_white/"+i);
}



for i, ingredients in create_liquid_science {
    var liquid = liquid_science[i]*1000;
    var ing1 = ingredients[0];   
    var ing2 = ingredients[1];
    var ing3 = ingredients[2];
    <recipetype:create:mixing>.addRecipe("recipe.create.mixing.science/"+i, "none", liquid, [ing1, ing2, ing3], [<fluid:minecraft:water>.withTag({phase: liquid_phase[i]})*1000], mix_science_duration[i]);
    mods.jei.JEI.hideRecipe("create:mixing", "crafttweaker:recipe.create.mixing.science/"+i);
}

mods.jei.JEI.addInfo(<fluid:contenttweaker:liquid_red>*1000, ["1 Red Primer", "1 Copper Plate", "1 Iron Gear", "1000mb water", "", "Put all of this in a mixer and you get Liquid Logistic."]);
mods.jei.JEI.addInfo(<fluid:contenttweaker:liquid_green>*1000, ["2 Green Primer", "1 Basic Conveyor", "1 Steel Gear", "1000mb water", "", "Put all of this in a mixer and you get Liquid Mechanics."]);
mods.jei.JEI.addInfo(<fluid:contenttweaker:liquid_blue>*1000, ["5 Blue Primer", "1 Redstone Engineering Block", "1 Precision Mechanism", "1 Invar gear", "1000mb water", "", "Put all of this in a mixer and you get Liquid Production."]);
mods.jei.JEI.addInfo(<fluid:contenttweaker:liquid_purple>*1000, ["8 Purple Primer", "1 Lumium Gear", "1 Signalum Gear", "1 Enderium Gear", "1000mb water", "", "Put all of this in a mixer and you get Liquid Utility."]);
mods.jei.JEI.addInfo(<fluid:contenttweaker:liquid_yellow>*1000, ["11 Yellow Primer", "1 HDPE Pellet", "1 Reinforced Alloy", "1 Yellow Cake Uranium", "1000mb water", "", "Put all of this in a mixer and you get Liquid Chemical."]);
mods.jei.JEI.addInfo(<fluid:contenttweaker:liquid_white>*1000, ["12 White Primer", "1 Polonium Pellet", "1 Reprocessed Fissile Fragment", "1 Antimatter Pellet", "1000mb water", "", "Put all of this in a mixer and you get Liquid Space."]);