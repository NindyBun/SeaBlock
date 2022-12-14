import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

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

<tag:items:thermal:crafting/dies>.add([
    <item:immersiveengineering:mold_gear>, 
    <item:immersiveengineering:mold_plate>,
    <item:immersiveengineering:mold_rod>,
    <item:immersiveengineering:mold_wire>
]);

var pow_ie_press = 1800;
var pow_thermal_press = 1000;
<recipetype:immersiveengineering:metal_press>.removeByRegex("immersiveengineering:metalpress/gear.*");
<recipetype:thermal:press>.removeByRegex("thermal:machine/press/press.*ingot_to_gear");
for i, ingot in ingotsToGears {
    <recipetype:thermal:press>.addRecipe("recipe.thermal.press.ingot_to_gear/"+i, [ingot[1]], <fluid:minecraft:empty>, [ingot[0]*2, <item:immersiveengineering:mold_gear>], pow_thermal_press);
    <recipetype:immersiveengineering:metal_press>.addRecipe("recipe.immersiveengineering.metalpress.ingot_to_gear/"+i, ingot[0]*2, <item:immersiveengineering:mold_gear>, pow_ie_press, ingot[1]);
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
<recipetype:create:pressing>.removeByRegex("create:pressing/.*_ingot");
for i, ingot in ingotsToPlates {
    <recipetype:thermal:press>.addRecipe("recipe.thermal.press.ingot_to_plate/"+i, [ingot[1]], <fluid:minecraft:empty>, [ingot[0], <item:immersiveengineering:mold_plate>], pow_thermal_press);
    <recipetype:immersiveengineering:metal_press>.addRecipe("recipe.immersiveengineering.metalpress.ingot_to_plate/"+i, ingot[0], <item:immersiveengineering:mold_plate>, pow_ie_press, ingot[1]);
    <recipetype:create:pressing>.addRecipe("recipe.create.pressing.ingot_to_plate/"+i, [ingot[1]], ingot[0]);
    craftingTable.addShapeless("recipe.crafting.ingot_to_plate_1/"+i, ingot[1], [ingot[0], <item:immersiveengineering:hammer>.anyDamage()]);
    craftingTable.addShaped("recipe.crafting.ingot_to_plate_2/"+i, ingot[1], [
        [ingot[0], ingot[0], ingot[0]]
    ]);
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
    <recipetype:thermal:press>.addRecipe("recipe.thermal.press.ingot_to_rod/"+i, [ingot[1]*4], <fluid:minecraft:empty>, [ingot[0], <item:immersiveengineering:mold_rod>], pow_thermal_press);
    <recipetype:immersiveengineering:metal_press>.addRecipe("recipe.immersiveengineering.metalpress.ingot_to_rod/"+i, ingot[0], <item:immersiveengineering:mold_rod>, pow_ie_press, ingot[1]*4);
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
    <recipetype:thermal:press>.addRecipe("recipe.thermal.press.ingot_to_wire/"+i, [ingot[1]*4], <fluid:minecraft:empty>, [ingot[0], <item:immersiveengineering:mold_wire>], pow_thermal_press);
    <recipetype:immersiveengineering:metal_press>.addRecipe("recipe.immersiveengineering.metalpress.ingot_to_wire/"+i, ingot[0], <item:immersiveengineering:mold_wire>, pow_ie_press, ingot[1]*4);
}

var wiresToCoils as IItemStack[][] = [
    [<item:emendatusenigmatica:electrum_ingot>, <item:immersiveengineering:wirecoil_electrum>],
    [<item:emendatusenigmatica:steel_ingot>, <item:immersiveengineering:wirecoil_structure_steel>],
    [<item:emendatusenigmatica:aluminum_ingot>, <item:immersiveengineering:wirecoil_steel>],
    [<item:emendatusenigmatica:copper_ingot>, <item:immersiveengineering:wirecoil_copper>],

    [<item:immersiveengineering:wire_electrum>, <item:immersiveengineering:wirecoil_electrum>],
    [<item:immersiveengineering:wire_steel>, <item:immersiveengineering:wirecoil_structure_steel>],
    [<item:immersiveengineering:wire_aluminum>, <item:immersiveengineering:wirecoil_steel>],
    [<item:immersiveengineering:wire_copper>, <item:immersiveengineering:wirecoil_copper>],
    [<item:immersiveengineering:hemp_fiber>, <item:immersiveengineering:wirecoil_structure_rope>],
];

for i, wire in wiresToCoils {
    if (i <= 3){
        craftingTable.addShaped("recipe.crafting.coil_1."+i, wire[1], [
            [<item:minecraft:air>, wire[0], <item:minecraft:air>],
            [wire[0], <item:minecraft:stick>, wire[0]],
            [<item:minecraft:air>, wire[0], <item:minecraft:air>]
        ]);
        craftingTable.addShaped("recipe.crafting.coil_2."+i, wire[1]*2, [
            [<item:minecraft:air>, wire[0], <item:minecraft:air>],
            [wire[0], <item:immersiveengineering:stick_treated>, wire[0]],
            [<item:minecraft:air>, wire[0], <item:minecraft:air>]
        ]);
    }else if (i > 3) {
        craftingTable.addShaped("recipe.crafting.coil_3."+i, wire[1]*2, [
            [<item:minecraft:air>, wire[0], <item:minecraft:air>],
            [wire[0], <item:minecraft:stick>, wire[0]],
            [<item:minecraft:air>, wire[0], <item:minecraft:air>]
        ]);
        craftingTable.addShaped("recipe.crafting.coil_4."+i, wire[1]*4, [
            [<item:minecraft:air>, wire[0], <item:minecraft:air>],
            [wire[0], <item:immersiveengineering:stick_treated>, wire[0]],
            [<item:minecraft:air>, wire[0], <item:minecraft:air>]
        ]);        
    }
}

var ingotsToBlocks as IItemStack[][] = [
    [<item:emendatusenigmatica:brass_ingot>, <item:emendatusenigmatica:brass_block>],
    [<item:emendatusenigmatica:electrum_ingot>, <item:emendatusenigmatica:electrum_block>],
    [<item:emendatusenigmatica:steel_ingot>, <item:emendatusenigmatica:steel_block>],
    [<item:emendatusenigmatica:bronze_ingot>, <item:emendatusenigmatica:bronze_block>],
    [<item:emendatusenigmatica:constantan_ingot>, <item:emendatusenigmatica:constantan_block>],
    [<item:emendatusenigmatica:invar_ingot>, <item:emendatusenigmatica:invar_block>],
    [<item:emendatusenigmatica:signalum_ingot>, <item:emendatusenigmatica:signalum_block>],
    [<item:emendatusenigmatica:lumium_ingot>, <item:emendatusenigmatica:lumium_block>],
    [<item:emendatusenigmatica:enderium_ingot>, <item:emendatusenigmatica:enderium_block>],
    [<item:emendatusenigmatica:cast_iron_ingot>, <item:emendatusenigmatica:cast_iron_block>],

    [<item:emendatusenigmatica:uranium_ingot>, <item:emendatusenigmatica:uranium_block>],
    [<item:emendatusenigmatica:osmium_ingot>, <item:emendatusenigmatica:osmium_block>],
    [<item:emendatusenigmatica:zinc_ingot>, <item:emendatusenigmatica:zinc_block>],
    [<item:emendatusenigmatica:tin_ingot>, <item:emendatusenigmatica:tin_block>],
    [<item:emendatusenigmatica:nickel_ingot>, <item:emendatusenigmatica:nickel_block>],
    [<item:emendatusenigmatica:lead_ingot>, <item:emendatusenigmatica:lead_block>],
    [<item:emendatusenigmatica:silver_ingot>, <item:emendatusenigmatica:silver_block>],
    [<item:emendatusenigmatica:aluminum_ingot>, <item:emendatusenigmatica:aluminum_block>],
    [<item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:copper_block>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_block>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_block>],
    [<item:mekanism:ingot_refined_obsidian>, <item:mekanism:block_refined_obsidian>],
    [<item:mekanism:ingot_refined_glowstone>, <item:mekanism:block_refined_glowstone>],
];

craftingTable.addShaped("recipe.crafting.mekanism.refined_obsidian/ingot_to_block", <item:mekanism:block_refined_obsidian>, [
    [<item:mekanism:ingot_refined_obsidian>, <item:mekanism:ingot_refined_obsidian>, <item:mekanism:ingot_refined_obsidian>],
    [<item:mekanism:ingot_refined_obsidian>, <item:mekanism:ingot_refined_obsidian>, <item:mekanism:ingot_refined_obsidian>],
    [<item:mekanism:ingot_refined_obsidian>, <item:mekanism:ingot_refined_obsidian>, <item:mekanism:ingot_refined_obsidian>]
]);

craftingTable.addShaped("recipe.crafting.mekanism.refined_glowstone/ingot_to_block", <item:mekanism:block_refined_glowstone>, [
    [<item:mekanism:ingot_refined_glowstone>, <item:mekanism:ingot_refined_glowstone>, <item:mekanism:ingot_refined_glowstone>],
    [<item:mekanism:ingot_refined_glowstone>, <item:mekanism:ingot_refined_glowstone>, <item:mekanism:ingot_refined_glowstone>],
    [<item:mekanism:ingot_refined_glowstone>, <item:mekanism:ingot_refined_glowstone>, <item:mekanism:ingot_refined_glowstone>]
]);

var pow_thermal_packing = 2400;
for i, ingot in ingotsToBlocks {
    <recipetype:thermal:press>.addRecipe("recipe.thermal.packing_3x3/ingot_to_block/"+i, [ingot[1]], <fluid:minecraft:empty>, [ingot[0]*9, <item:thermal:press_packing_3x3_die>], pow_thermal_packing);
    <recipetype:thermal:press>.addRecipe("recipe.thermal.unpacking/block_to_ingot/"+i, [ingot[0]*9], <fluid:minecraft:empty>, [ingot[1], <item:thermal:press_unpacking_die>], pow_thermal_packing);
}

var pow_thermal_pulverizer = 800;
var ingotsToDusts as IItemStack[][] = [
    [<item:emendatusenigmatica:brass_ingot>, <item:emendatusenigmatica:brass_dust>],
    [<item:emendatusenigmatica:electrum_ingot>, <item:emendatusenigmatica:electrum_dust>],
    [<item:emendatusenigmatica:steel_ingot>, <item:emendatusenigmatica:steel_dust>],
    [<item:emendatusenigmatica:bronze_ingot>, <item:emendatusenigmatica:bronze_dust>],
    [<item:emendatusenigmatica:constantan_ingot>, <item:emendatusenigmatica:constantan_dust>],
    [<item:emendatusenigmatica:invar_ingot>, <item:emendatusenigmatica:invar_dust>],
    [<item:emendatusenigmatica:signalum_ingot>, <item:emendatusenigmatica:signalum_dust>],
    [<item:emendatusenigmatica:lumium_ingot>, <item:emendatusenigmatica:lumium_dust>],
    [<item:emendatusenigmatica:enderium_ingot>, <item:emendatusenigmatica:enderium_dust>],
    [<item:emendatusenigmatica:cast_iron_ingot>, <item:emendatusenigmatica:cast_iron_dust>],

    [<item:emendatusenigmatica:uranium_ingot>, <item:emendatusenigmatica:uranium_dust>],
    [<item:emendatusenigmatica:osmium_ingot>, <item:emendatusenigmatica:osmium_dust>],
    [<item:emendatusenigmatica:zinc_ingot>, <item:emendatusenigmatica:zinc_dust>],
    [<item:emendatusenigmatica:tin_ingot>, <item:emendatusenigmatica:tin_dust>],
    [<item:emendatusenigmatica:nickel_ingot>, <item:emendatusenigmatica:nickel_dust>],
    [<item:emendatusenigmatica:lead_ingot>, <item:emendatusenigmatica:lead_dust>],
    [<item:emendatusenigmatica:silver_ingot>, <item:emendatusenigmatica:silver_dust>],
    [<item:emendatusenigmatica:aluminum_ingot>, <item:emendatusenigmatica:aluminum_dust>],
    [<item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:copper_dust>],
    [<item:minecraft:gold_ingot>, <item:emendatusenigmatica:gold_dust>],
    [<item:minecraft:iron_ingot>, <item:emendatusenigmatica:iron_dust>],
    [<item:minecraft:diamond>, <item:emendatusenigmatica:diamond_dust>],
    [<item:minecraft:ender_pearl>, <item:emendatusenigmatica:ender_dust>],
    [<item:emendatusenigmatica:fluorite_gem>, <item:emendatusenigmatica:fluorite_dust>]
];

for i, ingot in ingotsToDusts{
    <recipetype:thermal:pulverizer>.addRecipe("recipe.thermal.pulverizer.ingot_to_dust/"+i, [ingot[1]] , ingot[0], 0, pow_thermal_pulverizer);
    <recipetype:mekanism:crushing>.addRecipe("recipe.mekanism.crushing.ingot_to_dust/"+i, ingot[0], ingot[1]);
}