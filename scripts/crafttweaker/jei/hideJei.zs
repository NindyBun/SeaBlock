#priority 99
import crafttweaker.api.item.IItemStack;

var ores as string[] = [
    "iron",
    "gold",
    "copper",
    "aluminum",
    "silver",
    "lead",
    "nickel",
    "tin",
    "zinc",

    "osmium",
    "uranium",

    "brass",
    "bronze",
    "cast_iron",
    "steel",
    "constantan",
    "electrum",
    "invar",
    "signalum",
    "lumium",
    "enderium",

    "cinnabar",
    "diamond",
    "emerald",
    "quartz",
    "coal",
    "charcoal",
    "sawdust",
    "wood",
    "ender",
    "apatite",
    "sulfur",
    "niter",
    "saltpeter",
    "lithium",
    "lapis",
    "coke",
    "obsidian",
    "fluorite"
];

// Leave only Emendatus Enigmatica craftings
//mods.jei.JEI.hideItem(<item:mekanism:dust_netherite>);

mods.jei.JEI.hideRegex(".*ore.*");
mods.jei.JEI.hideRegex(".*crushed.*");

<recipetype:mekanism:crushing>.removeByName("mekanism:processing/netherite/dust/from_ingot");
<recipetype:create:splashing>.removeByName("create:splashing/crushed_brass");
<recipetype:create:mixing>.removeByName("create:mixing/brass_ingot");
<recipetype:create:mixing>.removeByName("create:mixing/crushed_brass");
<recipetype:thermal:smelter>.removeByName("thermal:compat/create/smelter_create_alloy_brass");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/red_sandstone");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/sandstone");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/blaze_powder");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/nether_gold");
<recipetype:immersiveengineering:arc_furnace>.removeAll();

var listOfRecipes = new stdlib.List<string>();

for recipe in craftingTable.getAllRecipes() { listOfRecipes.add(recipe.id); }

for recipe in <recipetype:create:crushing>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:create:splashing>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:create:milling>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:create:mixing>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:create:pressing>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:createaddition:rolling>.getAllRecipes() { listOfRecipes.add(recipe.id); }

for recipe in <recipetype:thermal:pulverizer>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:thermal:press>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:thermal:smelter>.getAllRecipes() { listOfRecipes.add(recipe.id); }

for recipe in <recipetype:mekanism:purifying>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:mekanism:enriching>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:mekanism:crushing>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:mekanism:injecting>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:mekanism:combining>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:mekanism:metallurgic_infusing>.getAllRecipes() { listOfRecipes.add(recipe.id); }

for recipe in <recipetype:immersiveengineering:arc_furnace>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:immersiveengineering:crusher>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:immersiveengineering:alloy>.getAllRecipes() { listOfRecipes.add(recipe.id); }
for recipe in <recipetype:immersiveengineering:metal_press>.getAllRecipes() { listOfRecipes.add(recipe.id); }

for ore in ores {
    furnace.removeByRegex(".*"+ore+".*");
    blastFurnace.removeByRegex(".*"+ore+".*");
    stoneCutter.removeByRegex(".*"+ore+".*");

    craftingTable.removeByRegex("emendatusenigmatica:ore_from_chunk_crafting/"+ore+".*");
    craftingTable.removeByRegex("thermal:parts/"+ore+".*");
    craftingTable.removeByRegex("immersiveengineering:crafting/nugget_"+ore+".*");
    craftingTable.removeByRegex("immersiveengineering:crafting/plate_"+ore+".*");
    craftingTable.removeByRegex("immersiveengineering:crafting/ingot_"+ore+".*");
    craftingTable.removeByRegex("immersiveengineering:crafting/stick_"+ore+".*");
    craftingTable.removeByRegex("immersiveposts:has_"+ore+".*");
    craftingTable.removeByRegex("thermal:storage/"+ore+".*");
    craftingTable.removeByRegex("thermal:"+ore+".*");
    craftingTable.removeByRegex("thermal:fire_charge/"+ore+".*");
    craftingTable.removeByRegex("thermal:earth_charge/"+ore+".*");
    craftingTable.removeByRegex("thermal:machine/press/press_"+ore+".*");
    craftingTable.removeByRegex("create:crafting/materials/"+ore+".*");
    craftingTable.removeByRegex("mekanism:processing/"+ore+".*");

    if ("create:crushing/"+ore+"_ore" in listOfRecipes) { <recipetype:create:crushing>.removeByName("create:crushing/"+ore+"_ore"); }
    if ("create:splashing/crushed_"+ore+"_ore" in listOfRecipes) { <recipetype:create:splashing>.removeByName("create:splashing/crushed_"+ore+"_ore"); }
    if ("create:splashing/thermal/crushed_"+ore+"_ore" in listOfRecipes) { <recipetype:create:splashing>.removeByName("create:splashing/thermal/crushed_"+ore+"_ore"); }
    if ("create:splashing/mekanism/crushed_"+ore+"_ore" in listOfRecipes) { <recipetype:create:splashing>.removeByName("create:splashing/mekanism/crushed_"+ore+"_ore"); }
    if ("create:splashing/immersiveengineering/crushed_"+ore+"_ore" in listOfRecipes) { <recipetype:create:splashing>.removeByName("create:splashing/immersiveengineering/crushed_"+ore+"_ore"); }
    if ("create:milling/"+ore+"_ore" in listOfRecipes) { <recipetype:create:milling>.removeByName("create:milling/"+ore+"_ore"); }
    if ("createautomated:mixing/"+ore+"_ingot_from_pieces" in listOfRecipes) { <recipetype:create:mixing>.removeByName("createautomated:mixing/"+ore+"_ingot_from_pieces"); }
    if ("createautomated:pressing/"+ore+"_ingot" in listOfRecipes) { <recipetype:create:pressing>.removeByName("createautomated:pressing/"+ore+"_ingot"); }
    if ("createa:pressing/"+ore+"_ingot" in listOfRecipes) { <recipetype:create:pressing>.removeByName("create:pressing/"+ore+"_ingot"); }
    if ("createaddition:pressing/"+ore+"_ingot" in listOfRecipes) { <recipetype:create:pressing>.removeByName("createaddition:pressing/"+ore+"_ingot"); }
    if ("createaddition:rolling/"+ore+"_plate" in listOfRecipes) { <recipetype:createaddition:rolling>.removeByName("createaddition:rolling/"+ore+"_plate"); }
    if ("createaddition:compat/immersiveengineering/"+ore in listOfRecipes) { <recipetype:create:mixing>.removeByName("createaddition:compat/immersiveengineering/"+ore); }

    if ("thermal:machine/pulverizer/pulverizer_"+ore in listOfRecipes) { <recipetype:thermal:pulverizer>.removeByName("thermal:machine/pulverizer/pulverizer_"+ore); }
    if ("thermal:machine/pulverizer/pulverizer_"+ore+"_ingot_to_dust" in listOfRecipes) { <recipetype:thermal:pulverizer>.removeByName("thermal:machine/pulverizer/pulverizer_"+ore+"_ingot_to_dust"); }
    if ("thermal:machine/pulverizer/pulverizer_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:pulverizer>.removeByName("thermal:machine/pulverizer/pulverizer_"+ore+"_ore"); }
    if ("thermal:machine/pulverizer/pulverizer_ie_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:pulverizer>.removeByName("thermal:machine/pulverizer/pulverizer_ie_"+ore+"_ore"); }
    if ("thermal:compat/immersiveengineering/pulverizer_ie_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:pulverizer>.removeByName("thermal:compat/immersiveengineering/pulverizer_ie_"+ore+"_ore"); }
    if ("thermal:compat/immersiveengineering/press_ie_"+ore+"_ingot_to_plate" in listOfRecipes) { <recipetype:thermal:press>.removeByName("thermal:compat/immersiveengineering/press_ie_"+ore+"_ingot_to_plate"); }
    if ("thermal:compat/create/pulverizer_create_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:pulverizer>.removeByName("thermal:compat/create/pulverizer_create_"+ore+"_ore"); }
    if ("thermal:machine/press/press_"+ore+"_ingot_to_gear" in listOfRecipes) { <recipetype:thermal:press>.removeByName("thermal:machine/press/press_"+ore+"_ingot_to_gear"); }
    if ("thermal:machine/press/press_"+ore+"_ingot_to_plate" in listOfRecipes) { <recipetype:thermal:press>.removeByName("thermal:machine/press/press_"+ore+"_ingot_to_plate"); }
    if ("thermal:machine/press/packing3x3/press_"+ore+"_packing" in listOfRecipes) { <recipetype:thermal:press>.removeByName("thermal:machine/press/packing3x3/press_"+ore+"_packing"); }
    if ("thermal:machine/smelter/smelter_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:machine/smelter/smelter_"+ore+"_ore"); }
    if ("thermal:machine/smelter/smelter_"+ore+"_dust" in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:machine/smelter/smelter_"+ore+"_dust"); }
    if ("thermal:compat/mekanism/smelter_mek_"+ore+"_dust" in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:compat/mekanism/smelter_mek_"+ore+"_dust"); }
    if ("thermal:machine/smelter/smelter_alloy_"+ore in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:machine/smelter/smelter_alloy_"+ore); }
    if ("thermal:compat/mekanism/pulverizer_mek_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:pulverizer>.removeByName("thermal:compat/mekanism/pulverizer_mek_"+ore+"_ore"); }
    if ("thermal:compat/mekanism/smelter_mek_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:compat/mekanism/smelter_mek_"+ore+"_ore"); }
    if ("thermal:compat/create/smelter_create_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:compat/create/smelter_create_"+ore+"_ore"); }

    if ("mekanism:processing/"+ore+"/shard/from_ore" in listOfRecipes) { <recipetype:mekanism:injecting>.removeByName("mekanism:processing/"+ore+"/shard/from_ore"); }
    if ("mekanism:processing/"+ore+"/dust/from_ore" in listOfRecipes) { <recipetype:mekanism:enriching>.removeByName("mekanism:processing/"+ore+"/dust/from_ore"); }
    if ("mekanism:processing/"+ore+"/clump/from_ore" in listOfRecipes) { <recipetype:mekanism:purifying>.removeByName("mekanism:processing/"+ore+"/clump/from_ore"); }
    if ("mekanism:processing/"+ore+"/dust/from_ingot" in listOfRecipes) { <recipetype:mekanism:crushing>.removeByName("mekanism:processing/"+ore+"/dust/from_ingot"); }
    if ("mekanism:processing/"+ore+"/clump/from_shard" in listOfRecipes) { <recipetype:mekanism:purifying>.removeByName("mekanism:processing/"+ore+"/clump/from_shard"); }
    if ("mekanism:processing/"+ore+"/dirty_dust/from_clump" in listOfRecipes) { <recipetype:mekanism:crushing>.removeByName("mekanism:processing/"+ore+"/dirty_dust/from_clump"); }
    if ("mekanism:processing/"+ore+"/dust/from_dirty_dust" in listOfRecipes) { <recipetype:mekanism:enriching>.removeByName("mekanism:processing/"+ore+"/dust/from_dirty_dust"); }
    if ("mekanism:processing/"+ore+"/ore/from_dust" in listOfRecipes) { <recipetype:mekanism:combining>.removeByName("mekanism:processing/"+ore+"/ore/from_dust"); }
    if ("mekanism:processing/"+ore+"/ingot/from_infusing" in listOfRecipes) { <recipetype:mekanism:metallurgic_infusing>.removeByName("mekanism:processing/"+ore+"/ingot/from_infusing"); }

    if ("immersiveengineering:crafting/hammercrushing_"+ore in listOfRecipes) { craftingTable.removeByName("immersiveengineering:crafting/hammercrushing_"+ore); }
    if ("immersiveengineering:crusher/"+ore in listOfRecipes) { <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/"+ore); }
    if ("immersiveengineering:crusher/ore_"+ore in listOfRecipes) { <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_"+ore); }
    if ("immersiveengineering:crusher/ingot_"+ore in listOfRecipes) { <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_"+ore); }
    if ("immersiveengineering:metalpress/rod_"+ore in listOfRecipes) { <recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/rod_"+ore); }
    if ("immersiveengineering:metalpress/plate_"+ore in listOfRecipes) { <recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_"+ore); }
    if ("immersiveengineering:alloysmelter/"+ore in listOfRecipes) { <recipetype:immersiveengineering:alloy>.removeByName("immersiveengineering:alloysmelter/"+ore); }
    if ("immersiveengineering:arc_furnace/alloy_"+ore in listOfRecipes) { <recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arc_furnace/alloy_"+ore); }
    if ("immersiveengineering:arc_furnace/"+ore in listOfRecipes) { <recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arc_furnace/"+ore); }

}