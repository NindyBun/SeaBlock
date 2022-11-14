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

<recipetype:thermal:bottler>.addRecipe("recipe.thermal.bottler.clay", <item:minecraft:clay>, <tag:items:minecraft:sand>, <tag:fluids:minecraft:water>*1000, 400);

craftingTable.removeRecipe(<item:thermal:machine_frame>);
craftingTable.addShaped("recipe.crafting.thermal.machine_frame", <item:thermal:machine_frame>, [
    [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:component_iron>, <item:immersiveengineering:treated_wood_horizontal>],
    [<item:immersiveengineering:component_iron>, <item:emendatusenigmatica:tin_gear>, <item:immersiveengineering:component_iron>],
    [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:component_iron>, <item:immersiveengineering:treated_wood_horizontal>]
]);