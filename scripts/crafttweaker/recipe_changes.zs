import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.recipes.WrapperRecipe;

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

var tags as IIngredient[] = [
    <tag:items:forge:ingots/iron>,
    <tag:items:forge:ingots/gold>,
    <tag:items:forge:ingots/copper>,
    <tag:items:forge:ingots/aluminum>,
    <tag:items:forge:ingots/silver>,
    <tag:items:forge:ingots/lead>,
    <tag:items:forge:ingots/nickel>,
    <tag:items:forge:ingots/tin>,
    <tag:items:forge:ingots/zinc>,
    <tag:items:forge:ingots/osmium>,
    <tag:items:forge:ingots/uranium>,
    <tag:items:forge:ingots/brass>,
    <tag:items:forge:ingots/bronze>,
    <tag:items:forge:ingots/cast_iron>,
    <tag:items:forge:ingots/steel>,
    <tag:items:forge:ingots/constantan>,
    <tag:items:forge:ingots/electrum>,
    <tag:items:forge:ingots/invar>,
    <tag:items:forge:ingots/signalum>,
    <tag:items:forge:ingots/lumium>,
    <tag:items:forge:ingots/enderium>,

    <tag:items:forge:dusts/iron>,
    <tag:items:forge:dusts/gold>,
    <tag:items:forge:dusts/copper>,
    <tag:items:forge:dusts/aluminum>,
    <tag:items:forge:dusts/silver>,
    <tag:items:forge:dusts/lead>,
    <tag:items:forge:dusts/nickel>,
    <tag:items:forge:dusts/tin>,
    <tag:items:forge:dusts/zinc>,
    <tag:items:forge:dusts/osmium>,
    <tag:items:forge:dusts/uranium>,
    <tag:items:forge:dusts/brass>,
    <tag:items:forge:dusts/bronze>,
    <tag:items:forge:dusts/cast_iron>,
    <tag:items:forge:dusts/steel>,
    <tag:items:forge:dusts/constantan>,
    <tag:items:forge:dusts/electrum>,
    <tag:items:forge:dusts/invar>,
    <tag:items:forge:dusts/signalum>,
    <tag:items:forge:dusts/lumium>,
    <tag:items:forge:dusts/enderium>,

    <tag:items:forge:dusts/cinnabar>,
    <tag:items:forge:dusts/diamond>,
    <tag:items:forge:dusts/emerald>,
    <tag:items:forge:dusts/quartz>,
    <tag:items:forge:dusts/coal>,
    <tag:items:forge:dusts/charcoal>,
    <tag:items:forge:dusts/wood>,
    <tag:items:forge:dusts/ender>,
    <tag:items:forge:dusts/apatite>,
    <tag:items:forge:dusts/sulfur>,
    <tag:items:forge:dusts/potassium_nitrate>,
    <tag:items:forge:dusts/niter>,
    <tag:items:forge:dusts/saltpeter>,
    
    <tag:items:forge:dusts/netherite>,
    <tag:items:forge:dusts/lithium>,
    <tag:items:forge:dusts/lapis>,
    <tag:items:forge:dusts/coal_coke>,
    <tag:items:forge:dusts/obsidian>,
    <tag:items:forge:dusts/fluorite>,

    <tag:items:forge:nuggets/iron>,
    <tag:items:forge:nuggets/gold>,
    <tag:items:forge:nuggets/copper>,
    <tag:items:forge:nuggets/aluminum>,
    <tag:items:forge:nuggets/silver>,
    <tag:items:forge:nuggets/lead>,
    <tag:items:forge:nuggets/nickel>,
    <tag:items:forge:nuggets/tin>,
    <tag:items:forge:nuggets/zinc>,
    <tag:items:forge:nuggets/osmium>,
    <tag:items:forge:nuggets/uranium>,
    <tag:items:forge:nuggets/brass>,
    <tag:items:forge:nuggets/bronze>,
    <tag:items:forge:nuggets/cast_iron>,
    <tag:items:forge:nuggets/steel>,
    <tag:items:forge:nuggets/constantan>,
    <tag:items:forge:nuggets/electrum>,
    <tag:items:forge:nuggets/invar>,
    <tag:items:forge:nuggets/signalum>,
    <tag:items:forge:nuggets/lumium>,
    <tag:items:forge:nuggets/enderium>,

    <tag:items:forge:gears/iron>,
    <tag:items:forge:gears/gold>,
    <tag:items:forge:gears/copper>,
    <tag:items:forge:gears/aluminum>,
    <tag:items:forge:gears/silver>,
    <tag:items:forge:gears/lead>,
    <tag:items:forge:gears/nickel>,
    <tag:items:forge:gears/tin>,
    <tag:items:forge:gears/zinc>,
    <tag:items:forge:gears/osmium>,
    <tag:items:forge:gears/uranium>,
    <tag:items:forge:gears/brass>,
    <tag:items:forge:gears/bronze>,
    <tag:items:forge:gears/cast_iron>,
    <tag:items:forge:gears/steel>,
    <tag:items:forge:gears/constantan>,
    <tag:items:forge:gears/electrum>,
    <tag:items:forge:gears/invar>,
    <tag:items:forge:gears/signalum>,
    <tag:items:forge:gears/lumium>,
    <tag:items:forge:gears/enderium>,
];

var items as IIngredient[] = [
    <item:minecraft:iron_ingot>,
    <item:minecraft:gold_ingot>,
    <item:emendatusenigmatica:copper_ingot>,
    <item:emendatusenigmatica:aluminum_ingot>,
    <item:emendatusenigmatica:silver_ingot>,
    <item:emendatusenigmatica:lead_ingot>,
    <item:emendatusenigmatica:nickel_ingot>,
    <item:emendatusenigmatica:tin_ingot>,
    <item:emendatusenigmatica:zinc_ingot>,
    <item:emendatusenigmatica:osmium_ingot>,
    <item:emendatusenigmatica:uranium_ingot>,
    <item:emendatusenigmatica:brass_ingot>,
    <item:emendatusenigmatica:bronze_ingot>,
    <item:emendatusenigmatica:cast_iron_ingot>,
    <item:emendatusenigmatica:steel_ingot>,
    <item:emendatusenigmatica:constantan_ingot>,
    <item:emendatusenigmatica:electrum_ingot>,
    <item:emendatusenigmatica:invar_ingot>,
    <item:emendatusenigmatica:signalum_ingot>,
    <item:emendatusenigmatica:lumium_ingot>,
    <item:emendatusenigmatica:enderium_ingot>,

    <item:emendatusenigmatica:iron_dust>,
    <item:emendatusenigmatica:gold_dust>,
    <item:emendatusenigmatica:copper_dust>,
    <item:emendatusenigmatica:aluminum_dust>,
    <item:emendatusenigmatica:silver_dust>,
    <item:emendatusenigmatica:lead_dust>,
    <item:emendatusenigmatica:nickel_dust>,
    <item:emendatusenigmatica:tin_dust>,
    <item:emendatusenigmatica:zinc_dust>,
    <item:emendatusenigmatica:osmium_dust>,
    <item:emendatusenigmatica:uranium_dust>,
    <item:emendatusenigmatica:brass_dust>,
    <item:emendatusenigmatica:bronze_dust>,
    <item:emendatusenigmatica:cast_iron_dust>,
    <item:emendatusenigmatica:steel_dust>,
    <item:emendatusenigmatica:constantan_dust>,
    <item:emendatusenigmatica:electrum_dust>,
    <item:emendatusenigmatica:invar_dust>,
    <item:emendatusenigmatica:signalum_dust>,
    <item:emendatusenigmatica:lumium_dust>,
    <item:emendatusenigmatica:enderium_dust>,

    <item:emendatusenigmatica:cinnabar_dust>,
    <item:emendatusenigmatica:diamond_dust>,
    <item:emendatusenigmatica:emerald_dust>,
    <item:emendatusenigmatica:quartz_dust>,
    <item:emendatusenigmatica:coal_dust>,
    <item:emendatusenigmatica:charcoal_dust>,
    <item:emendatusenigmatica:wood_dust>,
    <item:emendatusenigmatica:ender_dust>,
    <item:emendatusenigmatica:apatite_dust>,
    <item:emendatusenigmatica:sulfur_dust>,
    <item:emendatusenigmatica:potassium_nitrate_dust>,
    <item:emendatusenigmatica:potassium_nitrate_dust>,
    <item:emendatusenigmatica:potassium_nitrate_dust>,

    <item:thermal:netherite_dust>,
    <item:emendatusenigmatica:lithium_dust>,
    <item:emendatusenigmatica:lapis_dust>,
    <item:emendatusenigmatica:coke_dust>,
    <item:emendatusenigmatica:obsidian_dust>,
    <item:emendatusenigmatica:fluorite_dust>,

    <item:minecraft:iron_nugget>,
    <item:minecraft:gold_nugget>,
    <item:emendatusenigmatica:copper_nugget>,
    <item:emendatusenigmatica:aluminum_nugget>,
    <item:emendatusenigmatica:silver_nugget>,
    <item:emendatusenigmatica:lead_nugget>,
    <item:emendatusenigmatica:nickel_nugget>,
    <item:emendatusenigmatica:tin_nugget>,
    <item:emendatusenigmatica:zinc_nugget>,
    <item:emendatusenigmatica:osmium_nugget>,
    <item:emendatusenigmatica:uranium_nugget>,
    <item:emendatusenigmatica:brass_nugget>,
    <item:emendatusenigmatica:bronze_nugget>,
    <item:emendatusenigmatica:cast_iron_nugget>,
    <item:emendatusenigmatica:steel_nugget>,
    <item:emendatusenigmatica:constantan_nugget>,
    <item:emendatusenigmatica:electrum_nugget>,
    <item:emendatusenigmatica:invar_nugget>,
    <item:emendatusenigmatica:signalum_nugget>,
    <item:emendatusenigmatica:lumium_nugget>,
    <item:emendatusenigmatica:enderium_nugget>,

    <item:emendatusenigmatica:iron_gear>,
    <item:emendatusenigmatica:gold_gear>,
    <item:emendatusenigmatica:copper_gear>,
    <item:emendatusenigmatica:aluminum_gear>,
    <item:emendatusenigmatica:silver_gear>,
    <item:emendatusenigmatica:lead_gear>,
    <item:emendatusenigmatica:nickel_gear>,
    <item:emendatusenigmatica:tin_gear>,
    <item:emendatusenigmatica:zinc_gear>,
    <item:emendatusenigmatica:osmium_gear>,
    <item:emendatusenigmatica:uranium_gear>,
    <item:emendatusenigmatica:brass_gear>,
    <item:emendatusenigmatica:bronze_gear>,
    <item:emendatusenigmatica:cast_iron_gear>,
    <item:emendatusenigmatica:steel_gear>,
    <item:emendatusenigmatica:constantan_gear>,
    <item:emendatusenigmatica:electrum_gear>,
    <item:emendatusenigmatica:invar_gear>,
    <item:emendatusenigmatica:signalum_gear>,
    <item:emendatusenigmatica:lumium_gear>,
    <item:emendatusenigmatica:enderium_gear>,
];

/* for i, tag in tags{
    Replacer.forEverything().replace(tags[i], items[i]).suppressWarnings().execute();
} */