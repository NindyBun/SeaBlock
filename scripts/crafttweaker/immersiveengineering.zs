craftingTable.removeRecipe(<item:immersiveengineering:hammer>);
craftingTable.addShaped("recipe.immersiveengineering.crafting.hammer", <item:immersiveengineering:hammer>, [
    [<item:minecraft:air>, <item:emendatusenigmatica:iron_plate>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:emendatusenigmatica:iron_plate>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
]);


<recipetype:immersiveengineering:coke_oven>.removeRecipe(<item:immersiveengineering:coal_coke>);
<recipetype:immersiveengineering:coke_oven>.removeRecipe(<item:immersiveengineering:coke>);
<recipetype:immersiveengineering:coke_oven>.removeRecipe(<item:minecraft:charcoal>);
<recipetype:immersiveengineering:coke_oven>.addRecipe("recipe.immersiveengineering.coke_oven.coal_coke", <item:minecraft:coal>, 300, <item:immersiveengineering:coal_coke>, 500);
<recipetype:immersiveengineering:coke_oven>.addRecipe("recipe.immersiveengineering.coke_oven.coke_block", <item:minecraft:coal_block>, 3000, <item:immersiveengineering:coke>, 5000);
<recipetype:immersiveengineering:coke_oven>.addRecipe("recipe.immersiveengineering.coke_oven.charcoal", <tag:items:minecraft:logs>, 200, <item:minecraft:charcoal>, 250);

<recipetype:immersiveengineering:blast_furnace>.removeRecipe(<item:immersiveengineering:storage_steel>);
<recipetype:immersiveengineering:blast_furnace>.removeRecipe(<item:immersiveengineering:ingot_steel>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("recipe.immersiveengineering.blast_furnace.steel_block", <item:minecraft:iron_block>, 6000, <item:emendatusenigmatica:steel_block>, <item:immersiveengineering:slag>*9);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("recipe.immersiveengineering.blast_furnace.steel", <item:minecraft:iron_ingot>, 600, <item:emendatusenigmatica:steel_ingot>, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace_fuel>.addFuel("coal", <item:minecraft:coal>, 600);
<recipetype:immersiveengineering:blast_furnace_fuel>.addFuel("coal_block", <item:minecraft:coal_block>, 6000);

craftingTable.removeByName("immersiveengineering:crafting/concrete");
craftingTable.removeByName("immersiveengineering:crafting/concrete2");
craftingTable.addShaped("recipe.immersiveengineering.crafting.concrete", <item:immersiveengineering:concrete>*8, [
    [<tag:items:minecraft:sand>, <item:minecraft:gravel>, <tag:items:minecraft:sand>],
    [<item:minecraft:gravel>, <item:minecraft:clay>, <item:minecraft:gravel>],
    [<tag:items:minecraft:sand>, <item:minecraft:gravel>, <tag:items:minecraft:sand>]
]);
craftingTable.addShaped("recipe.immersiveengineering.crafting.concrete2", <item:immersiveengineering:concrete>*12, [
    [<tag:items:forge:slag>, <item:minecraft:gravel>, <tag:items:forge:slag>],
    [<item:minecraft:gravel>, <item:minecraft:clay>, <item:minecraft:gravel>],
    [<tag:items:forge:slag>, <item:minecraft:gravel>, <tag:items:forge:slag>]
]);

craftingTable.removeByName("immersivepetroleum:asphalt");
craftingTable.removeByName("immersivepetroleum:asphalt2");
craftingTable.addShaped("recipe.immersivepetroleum.asphalt", <item:immersivepetroleum:asphalt>*8, [
    [<tag:items:minecraft:sand>, <tag:items:forge:bitumen>, <tag:items:minecraft:sand>],
    [<item:minecraft:gravel>, <item:minecraft:clay>, <item:minecraft:gravel>],
    [<tag:items:minecraft:sand>, <tag:items:forge:bitumen>, <tag:items:minecraft:sand>]
]);
craftingTable.addShaped("recipe.immersivepetroleum.asphalt2", <item:immersivepetroleum:asphalt>*12, [
    [<tag:items:forge:slag>, <tag:items:forge:bitumen>, <tag:items:forge:slag>],
    [<item:minecraft:gravel>, <item:minecraft:clay>, <item:minecraft:gravel>],
    [<tag:items:forge:slag>, <tag:items:forge:bitumen>, <tag:items:forge:slag>]
]);

<recipetype:immersiveengineering:bottling_machine>.addRecipe("recipe.immersiveengineering.bottling.clay", <tag:items:forge:sand>, <tag:fluids:minecraft:water> * 1000, <item:minecraft:clay>);

craftingTable.removeRecipe(<item:immersiveengineering:blueprint>.withTag({blueprint: "components"}));
craftingTable.addShaped("recipe.crafting.immersiveengineering.blueprint_1", <item:immersiveengineering:blueprint>.withTag({blueprint: "components"}), [
    [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/copper>, <tag:items:forge:dusts/redstone>], 
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
craftingTable.addShaped("recipe.crafting.immersiveengineering.blueprint_2", <item:immersiveengineering:blueprint>.withTag({blueprint: "molds"}), [
    [<item:minecraft:air>, <tag:items:forge:plates/steel>, <item:minecraft:air>], 
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:blueprint>.withTag({blueprint: "bullet"}));
craftingTable.addShaped("recipe.crafting.immersiveengineering.blueprint_3", <item:immersiveengineering:blueprint>.withTag({blueprint: "bullet"}), [
    [<item:minecraft:gunpowder>, <tag:items:forge:ingots/copper>, <item:minecraft:gunpowder>], 
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}));
craftingTable.addShaped("recipe.crafting.immersiveengineering.blueprint_4", <item:immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}), [
    [<item:minecraft:gunpowder>, <tag:items:forge:ingots/steel>, <item:minecraft:gunpowder>], 
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:blueprint>.withTag({blueprint: "electrode"}));
craftingTable.addShaped("recipe.crafting.immersiveengineering.blueprint_5", <item:immersiveengineering:blueprint>.withTag({blueprint: "electrode"}), [
    [<tag:items:forge:coal_coke>, <tag:items:forge:coal_coke>, <tag:items:forge:coal_coke>], 
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:blueprint>.withTag({blueprint: "bannerpatters"}));
craftingTable.addShaped("recipe.crafting.immersiveengineering.blueprint_6", <item:immersiveengineering:blueprint>.withTag({blueprint: "bannerpatters"}), [
    [<item:minecraft:air>, <tag:items:minecraft:banners>, <item:minecraft:air>], 
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);
