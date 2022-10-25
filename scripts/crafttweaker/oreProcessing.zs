import crafttweaker.api.item.IItemStack;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.FurnaceManager;
import crafttweaker.api.BlastFurnaceManager;
import mods.mekanism.api.ingredient.ChemicalStackIngredient.SlurryStackIngredient;
import mods.mekanism.api.ingredient.FluidStackIngredient;

var powChiller = 800;
var powMGCrucible = 1600;
var powPulverizer = 1800;
var powInductionSmelter = 6000;
var powArcFurnace = 5000;
var timeArcFurnace = 50;

var ores as IItemStack[] = [
    <item:emendatusenigmatica:zinc_chunk>,
    <item:emendatusenigmatica:tin_chunk>,
    <item:emendatusenigmatica:nickel_chunk>,
    <item:emendatusenigmatica:lead_chunk>,
    <item:emendatusenigmatica:silver_chunk>,
    <item:emendatusenigmatica:aluminum_chunk>,
    <item:emendatusenigmatica:copper_chunk>,
    <item:emendatusenigmatica:gold_chunk>,
    <item:emendatusenigmatica:iron_chunk>,
];

var ingots as IItemStack[] = [
    <item:emendatusenigmatica:zinc_ingot>,
    <item:emendatusenigmatica:tin_ingot>,
    <item:emendatusenigmatica:nickel_ingot>,
    <item:emendatusenigmatica:lead_ingot>,
    <item:emendatusenigmatica:silver_ingot>,
    <item:emendatusenigmatica:aluminum_ingot>,
    <item:emendatusenigmatica:copper_ingot>,
    <item:minecraft:gold_ingot>,
    <item:minecraft:iron_ingot>,
];

var molten_ingots as IFluidStack[] = [
    <fluid:emendatusenigmatica:molten_zinc>,
    <fluid:emendatusenigmatica:molten_tin>,
    <fluid:emendatusenigmatica:molten_nickel>,
    <fluid:emendatusenigmatica:molten_lead>,
    <fluid:emendatusenigmatica:molten_silver>,
    <fluid:emendatusenigmatica:molten_aluminum>,
    <fluid:emendatusenigmatica:molten_copper>,
    <fluid:emendatusenigmatica:molten_gold>,
    <fluid:emendatusenigmatica:molten_iron>,
];

var dirtySlurrys as mods.mekanism.api.chemical.Slurry[] = [
    <slurry:emendatusenigmatica:dirty_zinc>,
    <slurry:mekanism:dirty_tin>,
    <slurry:emendatusenigmatica:dirty_nickel>,
    <slurry:mekanism:dirty_lead>,
    <slurry:emendatusenigmatica:dirty_silver>,
    <slurry:emendatusenigmatica:dirty_aluminum>,
    <slurry:mekanism:dirty_copper>,
    <slurry:mekanism:dirty_gold>,
    <slurry:mekanism:dirty_iron>,
];

var cleanSlurrys as mods.mekanism.api.chemical.Slurry[] = [
    <slurry:emendatusenigmatica:clean_zinc>,
    <slurry:mekanism:clean_tin>,
    <slurry:emendatusenigmatica:clean_nickel>,
    <slurry:mekanism:clean_lead>,
    <slurry:emendatusenigmatica:clean_silver>,
    <slurry:emendatusenigmatica:clean_aluminum>,
    <slurry:mekanism:clean_copper>,
    <slurry:mekanism:clean_gold>,
    <slurry:mekanism:clean_iron>,
];

var remove_dusts as IItemStack[] = [
    <item:thermal:tin_dust>,
    <item:thermal:lead_dust>,
    <item:thermal:silver_dust>,
    <item:thermal:nickel_dust>,
    <item:mekanism:dust_iron>,
    <item:mekanism:dust_gold>,
    <item:mekanism:dust_lead>,
    <item:mekanism:dust_copper>,
    <item:mekanism:dust_tin>,
    <item:thermal:iron_dust>,
    <item:thermal:gold_dust>,
    <item:thermal:copper_dust>,
];

var dusts as IItemStack[] = [
    <item:emendatusenigmatica:zinc_dirty_dust>,
    <item:contenttweaker:tin_dirty_dust>,
    <item:emendatusenigmatica:nickel_dirty_dust>,
    <item:contenttweaker:lead_dirty_dust>,
    <item:emendatusenigmatica:silver_dirty_dust>,
    <item:emendatusenigmatica:aluminum_dirty_dust>,
    <item:contenttweaker:copper_dirty_dust>,
    <item:contenttweaker:gold_dirty_dust>,
    <item:contenttweaker:iron_dirty_dust>,
];

var dirtyDusts as IItemStack[] = [
    <item:emendatusenigmatica:zinc_dirty_dust>,
    <item:contenttweaker:tin_dirty_dust>,
    <item:emendatusenigmatica:nickel_dirty_dust>,
    <item:contenttweaker:lead_dirty_dust>,
    <item:emendatusenigmatica:silver_dirty_dust>,
    <item:emendatusenigmatica:aluminum_dirty_dust>,
    <item:contenttweaker:copper_dirty_dust>,
    <item:contenttweaker:gold_dirty_dust>,
    <item:contenttweaker:iron_dirty_dust>,
];

var crystals as IItemStack[] = [
    <item:emendatusenigmatica:zinc_crystal>,
    <item:contenttweaker:tin_crystal>,
    <item:emendatusenigmatica:nickel_crystal>,
    <item:contenttweaker:lead_crystal>,
    <item:emendatusenigmatica:silver_crystal>,
    <item:emendatusenigmatica:aluminum_crystal>,
    <item:contenttweaker:copper_crystal>,
    <item:contenttweaker:gold_crystal>,
    <item:contenttweaker:iron_crystal>,
];

var shards as IItemStack[] = [
    <item:emendatusenigmatica:zinc_shard>,
    <item:contenttweaker:tin_shard>,
    <item:emendatusenigmatica:nickel_shard>,
    <item:contenttweaker:lead_shard>,
    <item:emendatusenigmatica:silver_shard>,
    <item:emendatusenigmatica:aluminum_shard>,
    <item:contenttweaker:copper_shard>,
    <item:contenttweaker:gold_shard>,
    <item:contenttweaker:iron_shard>,
];

var fragments as IItemStack[] = [
    <item:emendatusenigmatica:zinc_fragment>,
    <item:emendatusenigmatica:tin_fragment>,
    <item:emendatusenigmatica:nickel_fragment>,
    <item:emendatusenigmatica:lead_fragment>,
    <item:emendatusenigmatica:silver_fragment>,
    <item:emendatusenigmatica:aluminum_fragment>,
    <item:emendatusenigmatica:copper_fragment>,
    <item:contenttweaker:gold_fragment>,
    <item:contenttweaker:iron_fragment>,
];

for dust in remove_dusts{
}

/*

Chunk -> Chemical Dissolution Chamber -> Chemical Washer -> Chemical Crystallizer -> 5x Crystals
Chunk/Crystal -> Arc Furnace -> 4x Shards
Chunk/Shard -> Induction Smelter -> 1.5x ~ 4.5x Fragments
Chunk/Fragment -> Pulverizer -> 2.5 DirtyDusts
Chunk/DirtyDust -> Magma Crucible -> Blast Chiller -> 2 Ingots

*/

var remove_slurries as string[] = [
    "mekanism:processing/lead/slurry/dirty",
    "mekanism:processing/iron/slurry/dirty",
    "mekanism:processing/gold/slurry/dirty",
    "mekanism:processing/copper/slurry/dirty",
    "mekanism:processing/tin/slurry/dirty",

    "mekanism:processing/lead/slurry/clean",
    "mekanism:processing/iron/slurry/clean",
    "mekanism:processing/gold/slurry/clean",
    "mekanism:processing/copper/slurry/clean",
    "mekanism:processing/tin/slurry/clean",

    "mekanism:processing/lead/crystal/from_slurry",
    "mekanism:processing/iron/crystal/from_slurry",
    "mekanism:processing/gold/crystal/from_slurry",
    "mekanism:processing/copper/crystal/from_slurry",
    "mekanism:processing/tin/crystal/from_slurry",
];

for i, proc in remove_slurries {
    if (i <= 4) {
        <recipetype:mekanism:dissolution>.removeByName(proc);
    } else if (i > 4 && i <= 9 ) {
        <recipetype:mekanism:washing>.removeByName(proc);
    } else {
        <recipetype:mekanism:crystallizing>.removeByName(proc);
    }
}

for i, ore in ores{
    /* furnace.removeRecipe(ingots[i]);
    blastFurnace.removeRecipe(ingots[i]); */

    furnace.addRecipe("recipe.furnace1."+i, ingots[i], dirtyDusts[i], 0.3, 200);
    furnace.addRecipe("recipe.furnace2."+i, ingots[i], ores[i], 0.7, 200);
    blastFurnace.addRecipe("recipe.blastfurnace_1."+i, ingots[i], dirtyDusts[i], 0.3, 100);
    blastFurnace.addRecipe("recipe.blastfurnace_2."+i, ingots[i], ores[i], 0.7, 100);

    /* if (ingots[i] == <item:minecraft:iron_ingot>) {
        <recipetype:thermal:smelter>.removeRecipe([ingots[i], <item:thermal:nickel_ingot>, <item:thermal:rich_slag>]);
    }else if (ingots[i] == <item:minecraft:gold_ingot>) {
        <recipetype:thermal:smelter>.removeRecipe([ingots[i], <item:thermal:cinnabar>, <item:thermal:rich_slag>]);
        <recipetype:thermal:smelter>.removeRecipe([<item:thermal:copper_ingot>, <item:minecraft:gold_ingot>, <item:thermal:rich_slag>]);
    }else{
        <recipetype:thermal:smelter>.removeRecipe(ingots[i]);
    } */
    //<recipetype:thermal:smelter>.removeRecipe(ingots[i]);

    // Chunk/DirtyDust -> Magma Crucible -> Blast Chiller -> 2 Ingots
    <recipetype:thermal:chiller>.addRecipe("recipe.chiller."+i, ingots[i], <item:thermal:chiller_ingot_cast>, molten_ingots[i]*144, powChiller);
    <recipetype:thermal:crucible>.addRecipe("recipe.crucible_1."+i, molten_ingots[i]*288, dirtyDusts[i], powMGCrucible);
    <recipetype:thermal:crucible>.addRecipe("recipe.crucible_2."+i, molten_ingots[i]*288, ores[i], powMGCrucible);

    //Chunk/Fragment -> Pulverizer -> 2.5 DirtyDusts
    <recipetype:thermal:pulverizer>.addRecipe("recipe.pulverizer_1."+i, [dirtyDusts[i]*2, dirtyDusts[i]%50] , fragments[i], 0, powPulverizer);
    <recipetype:thermal:pulverizer>.addRecipe("recipe.pulverizer_2."+i, [dirtyDusts[i]*2, dirtyDusts[i]%50] , ores[i], 0, powPulverizer);

    //Chunk/Shard -> Induction Smelter -> 1.5x ~ 4.5x Fragments
    <recipetype:thermal:smelter>.addRecipe("recipe.smelter_1."+i, [fragments[i]%150, <item:thermal:slag>], [shards[i]], 0, powInductionSmelter);
    <recipetype:thermal:smelter>.addRecipe("recipe.smelter_2."+i, [fragments[i]%150, <item:thermal:slag>], [ores[i]], 0, powInductionSmelter);

    //Chunk/Crystal -> Arc Furnace -> 4x Shards
    <recipetype:immersiveengineering:arc_furnace>.addRecipe("recipe.arcfurnace_1."+i, crystals[i], [], timeArcFurnace, powArcFurnace, [shards[i]*4], <item:immersiveengineering:slag>);
    <recipetype:immersiveengineering:arc_furnace>.addRecipe("recipe.arcfurnace_2."+i, ores[i], [], timeArcFurnace, powArcFurnace, [shards[i]*4], <item:immersiveengineering:slag>);

    //Chunk -> Chemical Dissolution Chamber -> Chemical Washer -> Chemical Crystallizer -> 5x Crystals
    <recipetype:mekanism:dissolution>.addRecipe("recipe.dissolution."+i, ores[i], <gas:mekanism:sulfuric_acid>, dirtySlurrys[i]*1000);
    <recipetype:mekanism:washing>.addRecipe("recipe.washing."+i, <tag:fluids:minecraft:water>*10, dirtySlurrys[i]*1, cleanSlurrys[i]*1);
    <recipetype:mekanism:crystallizing>.addRecipe("recipe.crystallizing"+i, cleanSlurrys[i]*200, crystals[i]);
}