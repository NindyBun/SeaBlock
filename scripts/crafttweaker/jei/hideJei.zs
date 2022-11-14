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
    "lapis",
    "coke",
    "obsidian",
    "fluorite"
];

// Leave only Emendatus Enigmatica craftings
mods.jei.JEI.hideItem(<item:mekanism:dust_netherite>);
mods.jei.JEI.hideItem(<item:thermal:press_gear_die>);
mods.jei.JEI.hideItem(<item:createaddition:rolling_mill>);
mods.jei.JEI.hideItem(<item:immersiveengineering:stick_iron>);
mods.jei.JEI.hideItem(<item:immersiveengineering:stick_steel>);
mods.jei.JEI.hideItem(<item:immersiveengineering:stick_aluminum>);

mods.jei.JEI.hideRegex(".*ore");
mods.jei.JEI.hideRegex(".*crushed.*");
mods.jei.JEI.hideRegex("createaddition:.*_rod");
mods.jei.JEI.hideRegex("createaddition:.*_sheet");
//mods.jei.JEI.hideRegex("immersiveengineering:stick.*");
mods.jei.JEI.hideRegex("immersiveposts:stick.*");
mods.jei.JEI.hideRegex("immersiveengineering:plate.*");
mods.jei.JEI.hideRegex("immersiveengineering:nugget.*");
mods.jei.JEI.hideRegex("immersiveengineering:ingot.*");
mods.jei.JEI.hideRegex("immersiveengineering:storage.*");
mods.jei.JEI.hideRegex("immersiveengineering:dust.*");
mods.jei.JEI.hideRegex("create:.*_ingot");
mods.jei.JEI.hideRegex("create:.*_block");
mods.jei.JEI.hideRegex("create:.*_sheet");
mods.jei.JEI.hideRegex("create:.*_nugget");
mods.jei.JEI.hideRegex("create:powdered_obsidian");
mods.jei.JEI.hideRegex("createaddition:diamond_grit");
mods.jei.JEI.hideRegex("createaddition:copper_wire");
mods.jei.JEI.hideRegex("createaddition:iron_wire");
mods.jei.JEI.hideRegex("steampowered:.*sheet");
mods.jei.JEI.hideRegex("steampowered:.*ingot");
mods.jei.JEI.hideRegex("thermal:.*dust");
mods.jei.JEI.hideRegex("thermal:.*gear");
mods.jei.JEI.hideRegex("thermal:.*ingot");
mods.jei.JEI.hideRegex("thermal:.*nugget");
mods.jei.JEI.hideRegex("thermal:.*plate");
mods.jei.JEI.hideRegex("thermal:.*block");
mods.jei.JEI.hideRegex("mekanism:clump.*");
mods.jei.JEI.hideRegex("mekanism:shard.*");
mods.jei.JEI.hideRegex("mekanism:crystal.*");
mods.jei.JEI.hideRegex("mekanism:dirty_dust.*");

var mekanismSave as string[] = [
    "mekanism:nugget_uranium",
    "mekanism:nugget_lead",
    "mekanism:nugget_tin",
    "mekanism:nugget_copper",
    "mekanism:nugget_osmium",
    "mekanism:ingot_uranium",
    "mekanism:ingot_lead",
    "mekanism:ingot_tin",
    "mekanism:ingot_copper",
    "mekanism:ingot_osmium",
    "mekanism:dust_lapis_lazuli",
    "mekanism:dust_bronze",
    "mekanism:dust_osmium",
    "mekanism:dirty_dust_tin",
    "mekanism:dust_quartz",
    "mekanism:dust_emerald",
    "mekanism:dust_gold",
    "mekanism:dust_diamond",
    "mekanism:block_osmium",
    "mekanism:block_copper",
    "mekanism:block_tin",
    "mekanism:block_lead",
    "mekanism:block_uranium",
    "mekanism:block_bronze",
    "mekanism:block_charcoal",
    "mekanism:block_steel",
    "mekanism:block_fluorite",
    "mekanism:nugget_bronze",
    "mekanism:nugget_steel",
    "mekanism:ingot_steel",
    "mekanism:dust_iron",
    "mekanism:ingot_bronze",
    "mekanism:dust_uranium",
    "mekanism:dust_lead",
    "mekanism:dust_tin",
    "mekanism:dust_copper",
];
mods.jei.JEI.hideMod("mekanism", (name as string) => {
    return !(name in mekanismSave);
});

craftingTable.removeByName("emendatusenigmatica:enigmatic_fortunizer");
<recipetype:mekanism:crushing>.removeByName("mekanism:processing/netherite/ingot_to_dust");
<recipetype:mekanism:combining>.removeByName("mekanism:processing/netherite/dust_to_ancient_debris");
<recipetype:mekanism:metallurgic_infusing>.removeByName("mekanism:processing/netherite/scrap_to_dust");
<recipetype:mekanism:metallurgic_infusing>.removeByName("mekanism:processing/bronze/dust/from_infusing");
<recipetype:create:splashing>.removeByName("create:splashing/crushed_brass");
<recipetype:create:mixing>.removeByName("create:mixing/brass_ingot");
<recipetype:create:mixing>.removeByName("create:mixing/crushed_brass");
<recipetype:create:crushing>.removeByName("create:compat/thermal/crushing/niter_ore");
<recipetype:create:crushing>.removeByName("create:compat/thermal/crushing/sulfur_ore");
<recipetype:thermal:smelter>.removeByName("thermal:compat/create/smelter_create_alloy_brass");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/red_sandstone");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/sandstone");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/blaze_powder");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/nether_gold");
<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/wire_iron");
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
    craftingTable.removeByRegex("immersiveengineering:crafting/storage_"+ore+".*");
    craftingTable.removeByRegex("immersiveposts:has_"+ore+".*");
    craftingTable.removeByRegex("thermal:storage/"+ore+".*");
    craftingTable.removeByRegex("thermal:"+ore+".*");
    craftingTable.removeByRegex("thermal:fire_charge/"+ore+".*");
    craftingTable.removeByRegex("thermal:earth_charge/"+ore+".*");
    craftingTable.removeByRegex("thermal:machine/press/press_"+ore+".*");
    craftingTable.removeByRegex("create:crafting/materials/"+ore+".*");
    craftingTable.removeByRegex("mekanism:processing/"+ore+".*");
    craftingTable.removeByRegex("mekanism:storage_blocks.*");

    if ("create:crushing/"+ore+"_ore" in listOfRecipes) { <recipetype:create:crushing>.removeByName("create:crushing/"+ore+"_ore"); }
    if ("create:crushing/"+ore in listOfRecipes) { <recipetype:create:crushing>.removeByName("create:crushing/"+ore); }
    if ("create:splashing/crushed_"+ore+"_ore" in listOfRecipes) { <recipetype:create:splashing>.removeByName("create:splashing/crushed_"+ore+"_ore"); }
    if ("create:splashing/thermal/crushed_"+ore+"_ore" in listOfRecipes) { <recipetype:create:splashing>.removeByName("create:splashing/thermal/crushed_"+ore+"_ore"); }
    if ("create:splashing/mekanism/crushed_"+ore+"_ore" in listOfRecipes) { <recipetype:create:splashing>.removeByName("create:splashing/mekanism/crushed_"+ore+"_ore"); }
    if ("create:splashing/immersiveengineering/crushed_"+ore+"_ore" in listOfRecipes) { <recipetype:create:splashing>.removeByName("create:splashing/immersiveengineering/crushed_"+ore+"_ore"); }
    if ("create:milling/"+ore+"_ore" in listOfRecipes) { <recipetype:create:milling>.removeByName("create:milling/"+ore+"_ore"); }
    if ("createautomated:mixing/"+ore+"_ingot_from_pieces" in listOfRecipes) { <recipetype:create:mixing>.removeByName("createautomated:mixing/"+ore+"_ingot_from_pieces"); }
    if ("createautomated:pressing/"+ore+"_ingot" in listOfRecipes) { <recipetype:create:pressing>.removeByName("createautomated:pressing/"+ore+"_ingot"); }
    if ("create:pressing/"+ore+"_ingot" in listOfRecipes) { <recipetype:create:pressing>.removeByName("create:pressing/"+ore+"_ingot"); }
    if ("createaddition:pressing/"+ore+"_ingot" in listOfRecipes) { <recipetype:create:pressing>.removeByName("createaddition:pressing/"+ore+"_ingot"); }
    if ("createaddition:rolling/"+ore+"_plate" in listOfRecipes) { <recipetype:createaddition:rolling>.removeByName("createaddition:rolling/"+ore+"_plate"); }
    if ("createaddition:rolling/"+ore+"_ingot" in listOfRecipes) { <recipetype:createaddition:rolling>.removeByName("createaddition:rolling/"+ore+"_ingot"); }
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
    if ("thermal:machine/press/unpacking/press_"+ore+"_unpacking" in listOfRecipes) { <recipetype:thermal:press>.removeByName("thermal:machine/press/unpacking/press_"+ore+"_unpacking"); }
    if ("thermal:machine/smelter/smelter_"+ore+"_dust" in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:machine/smelter/smelter_"+ore+"_dust"); }
    if ("thermal:compat/mekanism/smelter_mek_"+ore+"_dust" in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:compat/mekanism/smelter_mek_"+ore+"_dust"); }
    if ("thermal:machine/smelter/smelter_alloy_"+ore in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:machine/smelter/smelter_alloy_"+ore); }
    if ("thermal:compat/mekanism/pulverizer_mek_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:pulverizer>.removeByName("thermal:compat/mekanism/pulverizer_mek_"+ore+"_ore"); }
    if ("thermal:compat/mekanism/smelter_mek_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:compat/mekanism/smelter_mek_"+ore+"_ore"); }
    if ("thermal:compat/mekanism/pulverizer_mekanism_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:pulverizer>.removeByName("thermal:compat/mekanism/pulverizer_mekanism_"+ore+"_ore"); }
    if ("thermal:compat/create/smelter_create_"+ore+"_ore" in listOfRecipes) { <recipetype:thermal:smelter>.removeByName("thermal:compat/create/smelter_create_"+ore+"_ore"); }

    if ("mekanism:processing/"+ore+"/shard/from_ore" in listOfRecipes) { <recipetype:mekanism:injecting>.removeByName("mekanism:processing/"+ore+"/shard/from_ore"); }
    if ("mekanism:processing/"+ore+"/dust/from_ore" in listOfRecipes) { <recipetype:mekanism:enriching>.removeByName("mekanism:processing/"+ore+"/dust/from_ore"); }
    if ("mekanism:processing/"+ore+"/clump/from_ore" in listOfRecipes) { <recipetype:mekanism:purifying>.removeByName("mekanism:processing/"+ore+"/clump/from_ore"); }
    if ("mekanism:processing/"+ore+"/dust/from_ingot" in listOfRecipes) { <recipetype:mekanism:crushing>.removeByName("mekanism:processing/"+ore+"/dust/from_ingot"); }
    if ("mekanism:processing/"+ore+"/clump/from_shard" in listOfRecipes) { <recipetype:mekanism:purifying>.removeByName("mekanism:processing/"+ore+"/clump/from_shard"); }
    if ("mekanism:processing/"+ore+"/dirty_dust/from_clump" in listOfRecipes) { <recipetype:mekanism:crushing>.removeByName("mekanism:processing/"+ore+"/dirty_dust/from_clump"); }
    if ("mekanism:processing/"+ore+"/to_dust" in listOfRecipes) { <recipetype:mekanism:crushing>.removeByName("mekanism:processing/"+ore+"/to_dust"); }
    if ("mekanism:processing/"+ore+"/dust/from_dirty_dust" in listOfRecipes) { <recipetype:mekanism:enriching>.removeByName("mekanism:processing/"+ore+"/dust/from_dirty_dust"); }
    if ("mekanism:processing/"+ore+"/from_ore" in listOfRecipes) { <recipetype:mekanism:enriching>.removeByName("mekanism:processing/"+ore+"/from_ore"); }
    if ("mekanism:processing/"+ore+"/from_dust" in listOfRecipes) { <recipetype:mekanism:enriching>.removeByName("mekanism:processing/"+ore+"/from_dust"); }
    if ("mekanism:processing/"+ore+"/ore/from_dust" in listOfRecipes) { <recipetype:mekanism:combining>.removeByName("mekanism:processing/"+ore+"/ore/from_dust"); }
    if ("mekanism:processing/"+ore+"/ingot/from_infusing" in listOfRecipes) { <recipetype:mekanism:metallurgic_infusing>.removeByName("mekanism:processing/"+ore+"/ingot/from_infusing"); }
    if ("mekanism:nuggets/"+ore in listOfRecipes) { craftingTable.removeByName("mekanism:nuggets/"+ore); }

    if ("immersiveengineering:crafting/hammercrushing_"+ore in listOfRecipes) { craftingTable.removeByName("immersiveengineering:crafting/hammercrushing_"+ore); }
    if ("immersiveengineering:crusher/"+ore in listOfRecipes) { <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/"+ore); }
    if ("immersiveposts:stick_"+ore in listOfRecipes) { <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/"+ore); }
    if ("immersiveengineering:crusher/ore_"+ore in listOfRecipes) { <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_"+ore); }
    if ("immersiveengineering:crusher/ingot_"+ore in listOfRecipes) { <recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ingot_"+ore); }
    if ("immersiveengineering:metalpress/rod_"+ore in listOfRecipes) { <recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/rod_"+ore); }
    if ("immersiveengineering:metalpress/plate_"+ore in listOfRecipes) { <recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/plate_"+ore); }
    if ("immersiveengineering:alloysmelter/"+ore in listOfRecipes) { <recipetype:immersiveengineering:alloy>.removeByName("immersiveengineering:alloysmelter/"+ore); }
    if ("immersiveengineering:arc_furnace/alloy_"+ore in listOfRecipes) { <recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arc_furnace/alloy_"+ore); }
    if ("immersiveengineering:arc_furnace/"+ore in listOfRecipes) { <recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arc_furnace/"+ore); }

}
