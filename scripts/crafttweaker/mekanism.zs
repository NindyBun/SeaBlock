craftingTable.removeRecipe(<item:mekanism:steel_casing>);
craftingTable.addShaped("recipe.crafting.mekanism.steel_casing", <item:mekanism:steel_casing>, [
    [<item:emendatusenigmatica:steel_plate>, <item:immersiveengineering:component_steel>, <item:emendatusenigmatica:steel_plate>],
    [<item:immersiveengineering:component_steel>, <item:emendatusenigmatica:osmium_gear>, <item:immersiveengineering:component_steel>],
    [<item:emendatusenigmatica:steel_plate>, <item:immersiveengineering:component_steel>, <item:emendatusenigmatica:steel_plate>]
]);

craftingTable.removeRecipe(<item:mekanism:metallurgic_infuser>);
craftingTable.addShaped("recipe.crafting.mekanism.metallurgic_infuser", <item:mekanism:metallurgic_infuser>, [
    [<item:minecraft:iron_ingot>, <item:minecraft:furnace>, <item:minecraft:iron_ingot>],
    [<item:create:electron_tube>, <item:emendatusenigmatica:osmium_ingot>, <item:create:electron_tube>],
    [<item:minecraft:iron_ingot>, <item:minecraft:furnace>, <item:minecraft:iron_ingot>]
]);