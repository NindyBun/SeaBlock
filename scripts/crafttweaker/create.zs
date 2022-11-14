craftingTable.addShapeless("recipe.crafting.create.copper_casing", <item:create:copper_casing>, [<item:create:andesite_casing>, <item:emendatusenigmatica:copper_plate>]);
craftingTable.addShapeless("recipe.crafting.create.crass_casing", <item:create:brass_casing>, [<item:create:andesite_casing>, <item:emendatusenigmatica:brass_plate>]);

craftingTable.removeRecipe(<item:create:rose_quartz>);
<recipetype:mekanism:metallurgic_infusing>.removeByName("createaddition:compat/mekanism/rose_quartz_metallurgic_infusing");
craftingTable.addShapeless("recipe.crafting.create.rose_quartz", <item:create:rose_quartz>, [<item:minecraft:quartz>, <item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>]);
<recipetype:mekanism:metallurgic_infusing>.addRecipe("recipe.mekanism.metallurgic_infusing.rose_quartz", <item:minecraft:quartz>, <infuse_type:mekanism:redstone> * 40, <item:create:rose_quartz>);
<recipetype:create:mixing>.addRecipe("recipe.create.mixing.rose_quartz", "none", <item:create:rose_quartz>, [<item:minecraft:quartz>, <item:minecraft:redstone>*4]);

<recipetype:create:milling>.addRecipe("recipe.create.milling.sawdust", [
    <item:mekanism:sawdust>*4,
    <item:mekanism:sawdust>%25
], <tag:items:minecraft:planks>);

<recipetype:create:sequenced_assembly>.removeByName("create:sequenced_assembly/precision_mechanism");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("recipe.create.sequenced_assembly/precision_mechanism")
    .require(<item:immersiveengineering:light_engineering>)
    .transitionTo(<item:immersiveengineering:light_engineering>)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:emendatusenigmatica:aluminum_gear>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:create:electron_tube>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:mekanism:advanced_control_circuit>))
    .loops(1)
    .addOutput(<item:create:precision_mechanism>, 1));