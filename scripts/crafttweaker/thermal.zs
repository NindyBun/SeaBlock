<recipetype:thermal:press>.removeRecipe(<item:thermal:coal_coke>);
<recipetype:thermal:press>.removeRecipe(<item:thermal:coal_coke_block>);
<recipetype:thermal:press>.addRecipe("recipe.thermal.press.coal_coke_unpacking", [<item:immersiveengineering:coal_coke>*9], <fluid:minecraft:empty>, [<item:immersiveengineering:coke>, <item:thermal:press_unpacking_die>], 400);
<recipetype:thermal:press>.addRecipe("recipe.thermal.press.coal_coke_packing", [<item:immersiveengineering:coke>], <fluid:minecraft:empty>, [<item:immersiveengineering:coal_coke>*9, <item:thermal:press_packing_3x3_die>], 400);

<recipetype:thermal:pyrolyzer>.removeByName("thermal:machine/pyrolyzer/pyrolyzer_coal");
<recipetype:thermal:pyrolyzer>.removeByName("thermal:machine/pyrolyzer/pyrolyzer_bitumen");
<recipetype:thermal:pyrolyzer>.removeByName("thermal:machine/pyrolyzer/pyrolyzer_logs");
<recipetype:thermal:pyrolyzer>.addRecipe("recipe.thermal.pyrolyzer.coal", [<item:immersiveengineering:coal_coke>, <item:thermal:tar>%25], <fluid:immersiveengineering:creosote>*250, <item:minecraft:coal>, 2000);
<recipetype:thermal:pyrolyzer>.addRecipe("recipe.thermal.pyrolyzer.bitumen", [<item:immersiveengineering:coal_coke>, <item:thermal:tar>%50], <fluid:thermal:heavy_oil>*50, <item:thermal:bitumen>, 4000);
<recipetype:thermal:pyrolyzer>.addRecipe("recipe.thermal.pyrolyzer.logs", [<item:minecraft:charcoal>], <fluid:immersiveengineering:creosote>*125, <tag:items:minecraft:logs>, 2000);

craftingTable.removeRecipe(<item:thermal:machine_frame>);
craftingTable.addShaped("recipe.crafting.thermal.machine_frame", <item:thermal:machine_frame>, [
    [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:component_iron>, <item:immersiveengineering:treated_wood_horizontal>],
    [<item:immersiveengineering:component_iron>, <item:emendatusenigmatica:tin_gear>, <item:immersiveengineering:component_iron>],
    [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:component_iron>, <item:immersiveengineering:treated_wood_horizontal>]
]);

craftingTable.removeRecipe(<item:thermal:machine_speed_augment>);
craftingTable.addShaped("recipe.crafting.thermal.machine_speed_augment", <item:thermal:machine_speed_augment>, [
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>],
    [<item:minecraft:gold_ingot>, <item:thermal:rf_coil>, <item:minecraft:gold_ingot>],
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:thermal:machine_efficiency_augment>);
craftingTable.addShaped("recipe.crafting.thermal.machine_efficiency_augment", <item:thermal:machine_efficiency_augment>, [
    [<item:minecraft:air>, <item:emendatusenigmatica:electrum_ingot>, <item:minecraft:air>],
    [<item:emendatusenigmatica:electrum_ingot>, <item:thermal:rf_coil>, <item:emendatusenigmatica:electrum_ingot>],
    [<item:minecraft:air>, <item:emendatusenigmatica:electrum_ingot>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:thermal:dynamo_output_augment>);
craftingTable.addShaped("recipe.crafting.thermal.dynamo_output_augment", <item:thermal:dynamo_output_augment>, [
    [<item:minecraft:air>, <item:emendatusenigmatica:silver_ingot>, <item:minecraft:air>],
    [<item:emendatusenigmatica:silver_ingot>, <item:thermal:rf_coil>, <item:emendatusenigmatica:silver_ingot>],
    [<item:minecraft:air>, <item:emendatusenigmatica:silver_ingot>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:thermal:dynamo_fuel_augment>);
craftingTable.addShaped("recipe.crafting.thermal.dynamo_fuel_augment", <item:thermal:dynamo_fuel_augment>, [
    [<item:minecraft:air>, <item:emendatusenigmatica:lead_ingot>, <item:minecraft:air>],
    [<item:emendatusenigmatica:lead_ingot>, <item:thermal:rf_coil>, <item:emendatusenigmatica:lead_ingot>],
    [<item:minecraft:air>, <item:emendatusenigmatica:lead_ingot>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:thermal:upgrade_augment_1>);
craftingTable.addShaped("recipe.crafting.thermal.upgrade_augment_1", <item:thermal:upgrade_augment_1>, [
    [<item:emendatusenigmatica:invar_ingot>, <item:minecraft:redstone>, <item:emendatusenigmatica:invar_ingot>],
    [<item:minecraft:redstone>, <item:emendatusenigmatica:bronze_gear>, <item:minecraft:redstone>],
    [<item:emendatusenigmatica:invar_ingot>, <item:minecraft:redstone>, <item:emendatusenigmatica:invar_ingot>]
]);

craftingTable.removeRecipe(<item:thermal:upgrade_augment_2>);
craftingTable.addShaped("recipe.crafting.thermal.upgrade_augment_2", <item:thermal:upgrade_augment_2>, [
    [<item:emendatusenigmatica:electrum_ingot>, <item:emendatusenigmatica:aluminum_gear>, <item:emendatusenigmatica:electrum_ingot>],
    [<item:minecraft:redstone_block>, <item:thermal:upgrade_augment_1>, <item:minecraft:redstone_block>],
    [<item:emendatusenigmatica:electrum_ingot>, <item:emendatusenigmatica:aluminum_gear>, <item:emendatusenigmatica:electrum_ingot>]
]);

craftingTable.removeRecipe(<item:thermal:upgrade_augment_3>);
craftingTable.addShaped("recipe.crafting.thermal.upgrade_augment_3", <item:thermal:upgrade_augment_3>, [
    [<item:emendatusenigmatica:enderium_ingot>, <item:emendatusenigmatica:signalum_gear>, <item:emendatusenigmatica:enderium_ingot>],
    [<item:immersiveengineering:coil_hv>, <item:thermal:upgrade_augment_2>, <item:immersiveengineering:coil_hv>],
    [<item:emendatusenigmatica:enderium_ingot>, <item:emendatusenigmatica:signalum_gear>, <item:emendatusenigmatica:enderium_ingot>]
]);