craftingTable.addShapeless("recipe.crafting.cobble_1", <item:minecraft:gravel>, [<item:minecraft:cobblestone>, <item:immersiveengineering:hammer>.anyDamage()]);
craftingTable.addShapeless("recipe.crafting.cobble_2", <item:minecraft:gravel>, [<item:minecraft:cobblestone>, <item:emendatusenigmatica:enigmatic_hammer>.anyDamage()]);

craftingTable.addShapeless("recipe.crafting.gravel_1", <item:minecraft:sand>, [<item:minecraft:gravel>, <item:immersiveengineering:hammer>.anyDamage()]);
craftingTable.addShapeless("recipe.crafting.gravel_2", <item:minecraft:sand>, [<item:minecraft:gravel>, <item:emendatusenigmatica:enigmatic_hammer>.anyDamage()]);

craftingTable.addShapeless("recipe.crafting.sand_1", <item:minecraft:dirt>, [<item:minecraft:sand>, <item:immersiveengineering:hammer>.anyDamage()]);
craftingTable.addShapeless("recipe.crafting.sand_2", <item:minecraft:dirt>, [<item:minecraft:sand>, <item:emendatusenigmatica:enigmatic_hammer>.anyDamage()]);

craftingTable.addShapeless("recipe.crafting.priming_dust", <item:contenttweaker:priming_dust>*8, [<item:minecraft:sand>, <item:minecraft:gravel>]);

craftingTable.addShaped("recipe.crafting.red_primer", <item:contenttweaker:red_primer>, [
    [<item:contenttweaker:priming_dust>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.green_primer", <item:contenttweaker:green_primer>, [
    [<item:minecraft:air>, <item:contenttweaker:priming_dust>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.blue_primer", <item:contenttweaker:blue_primer>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:contenttweaker:priming_dust>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.purple_primer", <item:contenttweaker:purple_primer>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:contenttweaker:priming_dust>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.yellow_primer", <item:contenttweaker:yellow_primer>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:contenttweaker:priming_dust>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.white_primer", <item:contenttweaker:white_primer>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:contenttweaker:priming_dust>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.blackstone", <item:minecraft:blackstone>, [
    [<item:minecraft:stone>, <item:immersiveengineering:coal_coke>],
    [<item:immersiveengineering:coal_coke>, <item:minecraft:coal>]
]);

craftingTable.addShaped("recipe.crafting.clay_rod_cast", <item:contenttweaker:clay_rod_cast>, [
    [<item:minecraft:air>, <item:minecraft:clay_ball>, <item:minecraft:air>],
    [<item:minecraft:clay_ball>, <tag:items:forge:rods>, <item:minecraft:clay_ball>],
    [<item:minecraft:air>, <item:minecraft:clay_ball>, <item:minecraft:air>]
]);
furnace.addRecipe("recipe.furnace.clay_rod_cast", <item:contenttweaker:rod_cast>, <item:contenttweaker:clay_rod_cast>, 0, 200);

craftingTable.addShaped("recipe.crafting.bone_meal", <item:minecraft:bone_meal>*3, [
    [<tag:items:forge:sand>, <item:mekanism:sawdust>],
    [<item:mekanism:sawdust>, <item:thermal:niter>]
]);

craftingTable.addShapeless("recipe.crafting.leather_from_tough_fabric", <item:minecraft:leather>*3, [
    <item:immersiveengineering:hemp_fabric>, <item:immersiveengineering:hemp_fabric>, <item:immersiveengineering:hemp_fabric>, <item:immersiveengineering:hemp_fabric>
]);

craftingTable.addShaped("recipe.crafting.paper_from_tough_fabric", <item:minecraft:paper>*16, [
    [<item:immersiveengineering:hemp_fabric>, <item:immersiveengineering:hemp_fabric>, <item:immersiveengineering:hemp_fabric>]
]);

craftingTable.removeRecipe(<item:storagedrawers:void_upgrade>);
craftingTable.addShaped("recipe.crafting.storagedrawers.void_upgrade", <item:storagedrawers:void_upgrade>, [
    [<item:minecraft:coal>, <item:minecraft:coal>, <item:minecraft:coal>],
    [<item:minecraft:coal>, <item:storagedrawers:upgrade_template>, <item:minecraft:coal>],
    [<item:minecraft:coal>, <item:minecraft:coal>, <item:minecraft:coal>]
]);

craftingTable.removeRecipe(<item:prettypipes:tag_filter_modifier>);
craftingTable.addShaped("recipe.crafting.prettypipes.tag_filter_modifier", <item:prettypipes:tag_filter_modifier>, [
    [<item:minecraft:air>, <item:emendatusenigmatica:iron_chunk>, <item:minecraft:air>],
    [<item:minecraft:redstone>, <item:prettypipes:blank_module>, <item:minecraft:redstone>],
    [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]
]);

craftingTable.addShaped("recipe.crafting.chests_from_logs", <item:minecraft:chest>*4, [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:air>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
]);

craftingTable.addShaped("recipe.crafting.sticks_from_logs", <item:minecraft:stick>*16, [
    [<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]
]);

craftingTable.removeRecipe(<item:tinycoal:tinycoal>);
craftingTable.addShapeless("recipe.crafting.tinycoal.tinycoal", <item:tinycoal:tinycoal>*9, [<item:minecraft:coal>]);
craftingTable.addShaped("recipe.crafting.tinycoal.coal", <item:minecraft:coal>, [
    [<item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>],
    [<item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>],
    [<item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>, <item:tinycoal:tinycoal>]
]);

craftingTable.removeRecipe(<item:tinycoal:tinycharcoal>);
craftingTable.addShapeless("recipe.crafting.tinycoal.tinycharcoal", <item:tinycoal:tinycharcoal>*9, [<item:minecraft:charcoal>]);
craftingTable.addShaped("recipe.crafting.tinycoal.charcoal", <item:minecraft:charcoal>, [
    [<item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>],
    [<item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>],
    [<item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>, <item:tinycoal:tinycharcoal>]
]);

craftingTable.removeRecipe(<item:travellersboots:travellersbootmki>);
craftingTable.removeRecipe(<item:travellersboots:travellersbootmkii>);
craftingTable.removeRecipe(<item:travellersboots:travellersbootmkiii>);
craftingTable.removeRecipe(<item:travellersboots:travellersbootmkiv>);

furnace.addRecipe("recipe.furnace.green_dye_1", <item:minecraft:green_dye>, <item:minecraft:tall_grass>, 0.1, 200);
furnace.addRecipe("recipe.furnace.green_dye_2", <item:minecraft:green_dye>, <tag:items:minecraft:leaves>, 0.1, 200);
furnace.addRecipe("recipe.furnace.green_dye_3", <item:minecraft:green_dye>, <item:minecraft:large_fern>, 0.1, 200);
furnace.addRecipe("recipe.furnace.green_dye_4", <item:minecraft:green_dye>, <item:minecraft:kelp>, 0.1, 200);
furnace.addRecipe("recipe.furnace.black_dye", <item:minecraft:black_dye>, <item:minecraft:green_dye>, 0.1, 200);

furnace.addRecipe("recipe.furnace.cured_rubber", <item:thermal:cured_rubber>, <item:thermal:rubber>, 0.1, 200);
craftingTable.addShaped("recipe.crafting.empty_ender_pearl", <item:contenttweaker:empty_ender_pearl>, [
    [<item:minecraft:air>, <item:thermal:cured_rubber>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:slime_ball>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:thermal:cured_rubber>, <item:minecraft:air>]
]);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("recipe.create.sequenced_assembly/ender_pearl")
    .require(<item:contenttweaker:empty_ender_pearl>)
    .transitionTo(<item:contenttweaker:empty_ender_pearl>)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:minecraft:green_dye>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:minecraft:emerald>))
    .addStep(<recipetype:create:filling>.factory(), (rb) => rb.require(<fluid:minecraft:water>*250))
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100))
    .loops(1)
    .addOutput(<item:minecraft:ender_pearl>, 1));

<recipetype:thermal:bottler>.addRecipe("recipe.thermal.bottler.clay_from_sand", <item:minecraft:clay>, <tag:items:minecraft:sand>, <tag:fluids:minecraft:water>*1000, 400);
<recipetype:thermal:bottler>.addRecipe("recipe.thermal.bottler.clay_from_terracotta", <item:minecraft:clay>, <tag:items:mekanism:colorable/terracotta>, <tag:fluids:minecraft:water>*4000, 400);
<recipetype:thermal:bottler>.addRecipe("recipe.thermal.bottler.clay_from_dirt", <item:minecraft:clay>, <item:minecraft:dirt>, <tag:fluids:minecraft:water>*2000, 400);

<recipetype:immersiveengineering:bottling_machine>.addRecipe("recipe.immersiveengineering.bottling.clay_from_sand", <tag:items:forge:sand>, <tag:fluids:minecraft:water> * 1000, <item:minecraft:clay>);
<recipetype:immersiveengineering:bottling_machine>.addRecipe("recipe.immersiveengineering.bottling.clay_from_terracotta", <tag:items:mekanism:colorable/terracotta>, <tag:fluids:minecraft:water> * 4000, <item:minecraft:clay>);
<recipetype:immersiveengineering:bottling_machine>.addRecipe("recipe.immersiveengineering.bottling.clay_from_dirt", <item:minecraft:dirt>, <tag:fluids:minecraft:water> * 2000, <item:minecraft:clay>);

craftingTable.addShaped("recipe.crafting.immersiveengineering.nether_brick", <item:minecraft:nether_brick>*8, [
    [<item:immersiveengineering:blastbrick>, <item:immersiveengineering:blastbrick>, <item:immersiveengineering:blastbrick>],
    [<item:immersiveengineering:blastbrick>, <item:minecraft:coal>, <item:immersiveengineering:blastbrick>],
    [<item:immersiveengineering:blastbrick>, <item:immersiveengineering:blastbrick>, <item:immersiveengineering:blastbrick>]
]);

craftingTable.addShaped("recipe.crafting.lava_bucket", <item:minecraft:lava_bucket>, [
    [<item:minecraft:nether_brick>, <item:minecraft:nether_brick>, <item:minecraft:nether_brick>],
    [<item:minecraft:nether_brick>, <item:minecraft:bucket>, <item:minecraft:nether_brick>],
    [<item:minecraft:nether_brick>, <item:minecraft:nether_brick>, <item:minecraft:nether_brick>]
]);

craftingTable.removeRecipe(<item:minecraft:string>);
craftingTable.addShapeless("recipe.crafting.string", <item:minecraft:string>*4, [
    <item:immersiveengineering:hemp_fiber>, <item:immersiveengineering:hemp_fiber>, <item:immersiveengineering:hemp_fiber>
]);

craftingTable.addShapeless("recipe.crafting.slime_ball", <item:minecraft:slime_ball>, [
    <item:minecraft:water_bucket>, <item:minecraft:green_dye>
]);

craftingTable.addShaped("recipe.crafting.marble/raw", <item:chisel:marble/raw>*8, [
    [<item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>],
    [<item:minecraft:stone_bricks>, <item:minecraft:air>, <item:minecraft:stone_bricks>],
    [<item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>]
]);

