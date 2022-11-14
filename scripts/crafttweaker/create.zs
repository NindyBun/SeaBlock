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

craftingTable.removeRecipe(<item:create:electron_tube>);
craftingTable.addShaped("recipe.crafting.create.electron_tube", <item:create:electron_tube>, [
    [<tag:items:forge:glass>, <item:create:polished_rose_quartz>, <tag:items:forge:glass>],
    [<tag:items:forge:glass>, <item:immersiveengineering:wire_electrum>, <tag:items:forge:glass>],
    [<item:emendatusenigmatica:nickel_plate>, <item:minecraft:iron_nugget>, <item:emendatusenigmatica:nickel_plate>]
]);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("recipe.create.sequenced_assembly/electron_tube")
    .require(<item:emendatusenigmatica:nickel_plate>)
    .transitionTo(<item:emendatusenigmatica:nickel_plate>)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:immersiveengineering:wire_electrum>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<tag:items:forge:glass>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:create:polished_rose_quartz>))
    .loops(1)
    .addOutput(<item:create:electron_tube>, 1));

<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:flywheel>);
<recipetype:create:mechanical_crafting>.addRecipe("recipe.create.mechanical_crafter.flywheel", <item:create:flywheel>, [
    [<item:minecraft:air>, <item:emendatusenigmatica:brass_ingot>, <item:emendatusenigmatica:brass_ingot>, <item:emendatusenigmatica:brass_ingot>, <item:minecraft:air>],
    [<item:emendatusenigmatica:brass_ingot>, <item:create:cogwheel>, <tag:items:minecraft:planks>, <item:create:cogwheel>, <item:emendatusenigmatica:brass_ingot>],
    [<item:emendatusenigmatica:brass_ingot>, <tag:items:minecraft:planks>, <item:create:shaft>, <tag:items:minecraft:planks>, <item:emendatusenigmatica:brass_ingot>],
    [<item:emendatusenigmatica:brass_ingot>, <item:create:cogwheel>, <tag:items:minecraft:planks>, <item:create:cogwheel>, <item:emendatusenigmatica:brass_ingot>],
    [<item:minecraft:air>, <item:emendatusenigmatica:brass_ingot>, <item:emendatusenigmatica:brass_ingot>, <item:emendatusenigmatica:brass_ingot>, <item:minecraft:air>]
]);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("recipe.create.sequenced_assembly/blaze_burner")
    .require(<item:create:empty_blaze_burner>)
    .transitionTo(<item:create:empty_blaze_burner>)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:thermal:sulfur>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:immersiveengineering:coal_coke>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:thermal:sulfur>))
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100))
    .addStep(<recipetype:create:filling>.factory(), (rb) => rb.require(<fluid:immersiveengineering:creosote>*250))    
    .loops(3)
    .addOutput(<item:create:blaze_burner>, 1));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("recipe.create.sequenced_assembly/blaze_rod")
    .require(<item:contenttweaker:rod_cast>)
    .transitionTo(<item:contenttweaker:rod_cast>)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:thermal:sulfur>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:thermal:sulfur>))
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100)) 
    .loops(5)
    .addOutput(<item:minecraft:blaze_rod>, 1));