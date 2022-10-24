import crafttweaker.api.item.IItemStack;

<recipetype:integrateddynamics:squeezer>.removeAll();
<recipetype:integrateddynamics:mechanical_squeezer>.removeAll();

var id_remove as IItemStack[] = [
    <item:integrateddynamics:squeezer>,
    <item:integrateddynamics:mechanical_squeezer>
];

for item in id_remove {
    craftingTable.removeRecipe(item);
    mods.jei.JEI.hideItem(item);
}