import crafttweaker.api.item.IItemStack;

var removeRecipeList as IItemStack[] = [
    <item:createautomated:drill_head>,
];

var hideItemList as IItemStack[] = [
    <item:createautomated:drill_head>,
];

for item in removeRecipeList {
    craftingTable.removeRecipe(item);
}

for item in hideItemList {
    mods.jei.JEI.hideItem(item);
}
