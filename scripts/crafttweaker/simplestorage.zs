import crafttweaker.api.item.IItemStack;

var itemRemoveHide as IItemStack[] = [
    <item:storagenetwork:stack_upgrade>,
    <item:storagenetwork:speed_upgrade>,
    <item:storagenetwork:import_kabel>,
    <item:storagenetwork:import_filter_kabel>,
    <item:storagenetwork:export_kabel>,
    <item:storagenetwork:exchange>,
    <item:storagenetwork:collector>
];

for item in itemRemoveHide {
    mods.jei.JEI.hideItem(item);
    craftingTable.removeRecipe(item);
}

craftingTable.removeRecipe(<item:storagenetwork:inventory_remote>);
craftingTable.addShaped("recipe.crafting.storagenetwork.inventory_remote", <item:storagenetwork:inventory_remote>, [
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
	[<item:minecraft:gold_ingot>, <item:storagenetwork:kabel>, <item:minecraft:gold_ingot>],
	[<item:minecraft:gold_ingot>, <item:storagenetwork:kabel>, <item:minecraft:gold_ingot>]
]);

craftingTable.removeRecipe(<item:storagenetwork:crafting_remote>);
craftingTable.addShapeless("recipe.crafting.storagenetwork.crafting_remote", <item:storagenetwork:crafting_remote>, [<item:storagenetwork:inventory_remote>]);

craftingTable.removeRecipe(<item:storagenetwork:inventory>);
craftingTable.addShaped("recipe.crafting.storagenetwork.inventory", <item:storagenetwork:inventory>, [
    [<item:emendatusenigmatica:steel_ingot>, <item:storagenetwork:kabel>, <item:emendatusenigmatica:steel_ingot>],
    [<item:storagenetwork:kabel>, <item:ironchest:diamond_chest>, <item:storagenetwork:kabel>],
    [<item:emendatusenigmatica:steel_ingot>, <item:storagenetwork:kabel>, <item:emendatusenigmatica:steel_ingot>]
]);

craftingTable.removeRecipe(<item:storagenetwork:picker_remote>);
craftingTable.addShaped("recipe.crafting.storagenetwork.picker_remote", <item:storagenetwork:picker_remote>, [
    [<item:minecraft:air>, <item:storagenetwork:kabel>, <item:minecraft:air>],
	[<item:storagenetwork:kabel>, <tag:items:forge:glass>, <item:storagenetwork:kabel>],
	[<tag:items:forge:glass>, <item:storagenetwork:kabel>, <tag:items:forge:glass>]
]);

craftingTable.removeRecipe(<item:storagenetwork:collector_remote>);
craftingTable.addShaped("recipe.crafting.storagenetwork.collector_remote", <item:storagenetwork:collector_remote>, [
	[<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
	[<item:storagenetwork:kabel>, <item:storagenetwork:kabel>, <item:storagenetwork:kabel>]
]);

