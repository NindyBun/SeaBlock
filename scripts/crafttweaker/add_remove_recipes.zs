import crafttweaker.api.item.IItemStack;

var ingotsToGears as IItemStack[][] = [
    [<item:emendatusenigmatica:brass_ingot>, <item:emendatusenigmatica:brass_gear>],
    [<item:emendatusenigmatica:electrum_ingot>, <item:emendatusenigmatica:electrum_gear>],
    [<item:emendatusenigmatica:steel_ingot>, <item:emendatusenigmatica:steel_gear>],
    [<item:emendatusenigmatica:bronze_ingot>, <item:emendatusenigmatica:bronze_gear>],
    [<item:emendatusenigmatica:constantan_ingot>, <item:emendatusenigmatica:constantan_gear>],
    [<item:emendatusenigmatica:invar_ingot>, <item:emendatusenigmatica:invar_gear>],
    [<item:emendatusenigmatica:signalum_ingot>, <item:emendatusenigmatica:signalum_gear>],
    [<item:emendatusenigmatica:lumium_ingot>, <item:emendatusenigmatica:lumium_gear>],
    [<item:emendatusenigmatica:enderium_ingot>, <item:emendatusenigmatica:enderium_gear>],
    [<item:emendatusenigmatica:cast_iron_ingot>, <item:emendatusenigmatica:cast_iron_gear>],

    [<item:emendatusenigmatica:uranium_ingot>, <item:emendatusenigmatica:uranium_gear>],
    [<item:emendatusenigmatica:osmium_ingot>, <item:emendatusenigmatica:osmium_gear>],
    [<item:emendatusenigmatica:zinc_ingot>, <item:emendatusenigmatica:zinc_gear>],
    [<item:emendatusenigmatica:tin_ingot>, <item:emendatusenigmatica:tin_gear>],
    [<item:emendatusenigmatica:nickel_ingot>, <item:emendatusenigmatica:nickel_gear>],
    [<item:emendatusenigmatica:lead_ingot>, <item:emendatusenigmatica:lead_gear>],
    [<item:emendatusenigmatica:silver_ingot>, <item:emendatusenigmatica:silver_gear>],
    [<item:emendatusenigmatica:aluminum_ingot>, <item:emendatusenigmatica:aluminum_gear>],
    [<item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:copper_gear>],
    [<item:minecraft:gold_ingot>, <item:emendatusenigmatica:gold_gear>],
    [<item:minecraft:iron_ingot>, <item:emendatusenigmatica:iron_gear>],
];

var pow_metal_press = 2400;
<recipetype:immersiveengineering:metal_press>.removeByRegex("immersiveengineering:metalpress/gear.*");
<recipetype:thermal:press>.removeByRegex("thermal:machine/press/press.*ingot_to_gear");
for i, ingot in ingotsToGears {
    <recipetype:thermal:press>.addRecipe("recipe.thermal.gear."+i, [ingot[1]], <fluid:minecraft:empty>, [ingot[0]*2, <item:immersiveengineering:mold_gear>], pow_metal_press);
    <recipetype:immersiveengineering:metal_press>.addRecipe("recipe.immersiveengineering.gear."+i, ingot[0]*2, <item:immersiveengineering:mold_gear>, pow_metal_press, ingot[1]);
}

var ingotsToPlates as IItemStack[][] = [
    [<item:emendatusenigmatica:brass_ingot>, <item:emendatusenigmatica:brass_plate>],
    [<item:emendatusenigmatica:electrum_ingot>, <item:emendatusenigmatica:electrum_plate>],
    [<item:emendatusenigmatica:steel_ingot>, <item:emendatusenigmatica:steel_plate>],
    [<item:emendatusenigmatica:bronze_ingot>, <item:emendatusenigmatica:bronze_plate>],
    [<item:emendatusenigmatica:constantan_ingot>, <item:emendatusenigmatica:constantan_plate>],
    [<item:emendatusenigmatica:invar_ingot>, <item:emendatusenigmatica:invar_plate>],
    [<item:emendatusenigmatica:signalum_ingot>, <item:emendatusenigmatica:signalum_plate>],
    [<item:emendatusenigmatica:lumium_ingot>, <item:emendatusenigmatica:lumium_plate>],
    [<item:emendatusenigmatica:enderium_ingot>, <item:emendatusenigmatica:enderium_plate>],
    [<item:emendatusenigmatica:cast_iron_ingot>, <item:emendatusenigmatica:cast_iron_plate>],

    [<item:emendatusenigmatica:uranium_ingot>, <item:emendatusenigmatica:uranium_plate>],
    [<item:emendatusenigmatica:osmium_ingot>, <item:emendatusenigmatica:osmium_plate>],
    [<item:emendatusenigmatica:zinc_ingot>, <item:emendatusenigmatica:zinc_plate>],
    [<item:emendatusenigmatica:tin_ingot>, <item:emendatusenigmatica:tin_plate>],
    [<item:emendatusenigmatica:nickel_ingot>, <item:emendatusenigmatica:nickel_plate>],
    [<item:emendatusenigmatica:lead_ingot>, <item:emendatusenigmatica:lead_plate>],
    [<item:emendatusenigmatica:silver_ingot>, <item:emendatusenigmatica:silver_plate>],
    [<item:emendatusenigmatica:aluminum_ingot>, <item:emendatusenigmatica:aluminum_plate>],
    [<item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:copper_plate>],
    [<item:minecraft:gold_ingot>, <item:emendatusenigmatica:gold_plate>],
    [<item:minecraft:iron_ingot>, <item:emendatusenigmatica:iron_plate>],
];

<recipetype:immersiveengineering:metal_press>.removeByRegex("immersiveengineering:metalpress/plate.*");
<recipetype:thermal:press>.removeByRegex("thermal:machine/press/press.*ingot_to_plate");
for i, ingot in ingotsToPlates {
    <recipetype:thermal:press>.addRecipe("recipe.thermal.plate."+i, [ingot[1]], <fluid:minecraft:empty>, [ingot[0], <item:immersiveengineering:mold_plate>], pow_metal_press);
    <recipetype:immersiveengineering:metal_press>.addRecipe("recipe.immersiveengineering.plate."+i, ingot[0], <item:immersiveengineering:mold_plate>, pow_metal_press, ingot[1]);
}

var ingotsToRods as IItemStack[][] = [
    [<item:emendatusenigmatica:brass_ingot>, <item:emendatusenigmatica:brass_rod>],
    [<item:emendatusenigmatica:electrum_ingot>, <item:emendatusenigmatica:electrum_rod>],
    [<item:emendatusenigmatica:steel_ingot>, <item:emendatusenigmatica:steel_rod>],
    [<item:emendatusenigmatica:bronze_ingot>, <item:emendatusenigmatica:bronze_rod>],
    [<item:emendatusenigmatica:constantan_ingot>, <item:emendatusenigmatica:constantan_rod>],
    [<item:emendatusenigmatica:invar_ingot>, <item:emendatusenigmatica:invar_rod>],
    [<item:emendatusenigmatica:signalum_ingot>, <item:emendatusenigmatica:signalum_rod>],
    [<item:emendatusenigmatica:lumium_ingot>, <item:emendatusenigmatica:lumium_rod>],
    [<item:emendatusenigmatica:enderium_ingot>, <item:emendatusenigmatica:enderium_rod>],
    [<item:emendatusenigmatica:cast_iron_ingot>, <item:emendatusenigmatica:cast_iron_rod>],

    [<item:emendatusenigmatica:uranium_ingot>, <item:emendatusenigmatica:uranium_rod>],
    [<item:emendatusenigmatica:osmium_ingot>, <item:emendatusenigmatica:osmium_rod>],
    [<item:emendatusenigmatica:zinc_ingot>, <item:emendatusenigmatica:zinc_rod>],
    [<item:emendatusenigmatica:tin_ingot>, <item:emendatusenigmatica:tin_rod>],
    [<item:emendatusenigmatica:nickel_ingot>, <item:emendatusenigmatica:nickel_rod>],
    [<item:emendatusenigmatica:lead_ingot>, <item:emendatusenigmatica:lead_rod>],
    [<item:emendatusenigmatica:silver_ingot>, <item:emendatusenigmatica:silver_rod>],
    [<item:emendatusenigmatica:aluminum_ingot>, <item:emendatusenigmatica:aluminum_rod>],
    [<item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:copper_rod>],
    [<item:minecraft:gold_ingot>, <item:emendatusenigmatica:gold_rod>],
    [<item:minecraft:iron_ingot>, <item:emendatusenigmatica:iron_rod>],
];

<recipetype:immersiveengineering:metal_press>.removeByRegex("immersiveengineering:metalpress/rod.*");
<recipetype:thermal:press>.removeByRegex("thermal:machine/press/press.*ingot_to_rod");
for i, ingot in ingotsToRods {
    <recipetype:thermal:press>.addRecipe("recipe.thermal.rod."+i, [ingot[1]*4], <fluid:minecraft:empty>, [ingot[0], <item:immersiveengineering:mold_rod>], pow_metal_press);
    <recipetype:immersiveengineering:metal_press>.addRecipe("recipe.immersiveengineering.rod."+i, ingot[0], <item:immersiveengineering:mold_rod>, pow_metal_press, ingot[1]*4);
}

var ingotsToWires as IItemStack[][] = [
    [<item:emendatusenigmatica:electrum_ingot>, <item:immersiveengineering:wire_electrum>],
    [<item:emendatusenigmatica:steel_ingot>, <item:immersiveengineering:wire_steel>],
    [<item:emendatusenigmatica:lead_ingot>, <item:immersiveengineering:wire_lead>],
    [<item:emendatusenigmatica:aluminum_ingot>, <item:immersiveengineering:wire_aluminum>],
    [<item:emendatusenigmatica:copper_ingot>, <item:immersiveengineering:wire_copper>],
    [<item:minecraft:gold_ingot>, <item:createaddition:gold_wire>],
];

<recipetype:immersiveengineering:metal_press>.removeByRegex("immersiveengineering:metalpress/wire.*");
<recipetype:thermal:press>.removeByRegex("thermal:machine/press/press.*ingot_to_wire");
for i, ingot in ingotsToWires {
    <recipetype:thermal:press>.addRecipe("recipe.thermal.wire."+i, [ingot[1]*4], <fluid:minecraft:empty>, [ingot[0], <item:immersiveengineering:mold_wire>], pow_metal_press);
    <recipetype:immersiveengineering:metal_press>.addRecipe("recipe.immersiveengineering.wire."+i, ingot[0], <item:immersiveengineering:mold_wire>, pow_metal_press, ingot[1]*4);
}