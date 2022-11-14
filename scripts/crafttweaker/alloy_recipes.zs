import crafttweaker.api.item.IItemStack;
import crafttweaker.api.fluid.IFluidStack;

var pow_thermal_smelter = 4800;
var alloy_map as IItemStack[][] = [
    [<item:emendatusenigmatica:copper_ingot>*3, <item:emendatusenigmatica:tin_ingot>, <item:emendatusenigmatica:bronze_ingot>*4],
    [<item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:zinc_ingot>, <item:emendatusenigmatica:brass_ingot>*2],
    [<item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:nickel_ingot>, <item:emendatusenigmatica:constantan_ingot>*2],
    [<item:emendatusenigmatica:silver_ingot>, <item:minecraft:gold_ingot>, <item:emendatusenigmatica:electrum_ingot>*2],
    [<item:minecraft:iron_ingot>, <item:immersiveengineering:coal_coke>, <item:emendatusenigmatica:steel_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:coal>*2, <item:emendatusenigmatica:cast_iron_ingot>],
    [<item:minecraft:iron_ingot>*2, <item:emendatusenigmatica:nickel_ingot>, <item:emendatusenigmatica:invar_ingot>*3],
    [<item:emendatusenigmatica:copper_ingot>*3, <item:emendatusenigmatica:silver_ingot>, <item:contenttweaker:copper_silver_alloy>*4],
    [<item:emendatusenigmatica:lead_ingot>*3, <item:minecraft:diamond>, <item:contenttweaker:lead_diamond_alloy>*4],
    [<item:emendatusenigmatica:tin_ingot>*3, <item:emendatusenigmatica:silver_ingot>, <item:contenttweaker:tin_silver_alloy>*4],
];

for i, ingot in alloy_map {
    <recipetype:thermal:smelter>.addRecipe("recipe.thermal.smelter/alloy/"+i, [ingot[2]], [ingot[0], ingot[1]], 0, pow_thermal_smelter);
    if (i != 4) { <recipetype:immersiveengineering:alloy>.addRecipe("recipe.immersiveengineering.alloy/alloy/"+i, ingot[0], ingot[1], 200, ingot[2]); }
    <recipetype:create:mixing>.addRecipe("recipe.create.mixing.alloy/"+i, "heated", ingot[2], [ingot[0], ingot[1]]);
}

var pow_thermal_bottler = 2000;
var infusing_alloy_map as IItemStack[][] = [
    [<item:contenttweaker:copper_silver_alloy>, <item:emendatusenigmatica:signalum_ingot>],
    [<item:contenttweaker:lead_diamond_alloy>, <item:emendatusenigmatica:enderium_ingot>],
    [<item:contenttweaker:tin_silver_alloy>, <item:emendatusenigmatica:lumium_ingot>],
];
var infusing_alloy_fluid_map as IFluidStack[] = [
    <fluid:thermal:redstone>*200,
    <fluid:thermal:ender>*250,
    <fluid:thermal:glowstone>*250
];

for i, ingot in infusing_alloy_map {
    <recipetype:thermal:bottler>.addRecipe("recipe.thermal.bottler.alloy/"+i, ingot[1], ingot[0], infusing_alloy_fluid_map[i], pow_thermal_bottler);
    <recipetype:create:mixing>.addRecipe("recipe.create.mixing.alloy_2/"+i, "heated", ingot[1], [ingot[0]], [infusing_alloy_fluid_map[i]]);
}