craftingTable.removeRecipe(<item:immersiveengineering:hammer>);
craftingTable.addShaped("recipe.crafting.immersiveengineering.hammer", <item:immersiveengineering:hammer>, [
    [<item:minecraft:air>, <item:emendatusenigmatica:iron_plate>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:emendatusenigmatica:iron_plate>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
]);


<recipetype:immersiveengineering:coke_oven>.removeRecipe(<item:immersiveengineering:coal_coke>);
<recipetype:immersiveengineering:coke_oven>.removeRecipe(<item:immersiveengineering:coke>);
<recipetype:immersiveengineering:coke_oven>.removeRecipe(<item:minecraft:charcoal>);
<recipetype:immersiveengineering:coke_oven>.addRecipe("recipe.crafting.immersiveengineering.coke_oven.coal_coke", <item:minecraft:coal>, 300, <item:immersiveengineering:coal_coke>, 500);
<recipetype:immersiveengineering:coke_oven>.addRecipe("recipe.crafting.immersiveengineering.coke_oven.coke_block", <item:minecraft:coal_block>, 3000, <item:immersiveengineering:coke>, 5000);
<recipetype:immersiveengineering:coke_oven>.addRecipe("recipe.crafting.immersiveengineering.coke_oven.charcoal", <tag:items:minecraft:logs>, 200, <item:minecraft:charcoal>, 250);

<recipetype:immersiveengineering:blast_furnace>.removeRecipe(<item:immersiveengineering:storage_steel>);
<recipetype:immersiveengineering:blast_furnace>.removeRecipe(<item:immersiveengineering:ingot_steel>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("recipe.crafting.immersiveengineering.blast_furnace.steel_block", <item:minecraft:iron_block>, 6000, <item:emendatusenigmatica:steel_block>, <item:immersiveengineering:slag>*9);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("recipe.crafting.immersiveengineering.blast_furnace.steel", <item:minecraft:iron_ingot>, 600, <item:emendatusenigmatica:steel_ingot>, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace_fuel>.addFuel("coal", <item:minecraft:coal>, 600);
<recipetype:immersiveengineering:blast_furnace_fuel>.addFuel("coal_block", <item:minecraft:coal_block>, 6000);

craftingTable.removeByName("immersiveengineering:crafting/concrete");
craftingTable.removeByName("immersiveengineering:crafting/concrete2");
craftingTable.addShaped("recipe.crafting.immersiveengineering.crafting.concrete", <item:immersiveengineering:concrete>*8, [
    [<tag:items:minecraft:sand>, <item:minecraft:gravel>, <tag:items:minecraft:sand>],
    [<item:minecraft:gravel>, <item:minecraft:clay>, <item:minecraft:gravel>],
    [<tag:items:minecraft:sand>, <item:minecraft:gravel>, <tag:items:minecraft:sand>]
]);
craftingTable.addShaped("recipe.crafting.immersiveengineering.concrete2", <item:immersiveengineering:concrete>*12, [
    [<tag:items:forge:slag>, <item:minecraft:gravel>, <tag:items:forge:slag>],
    [<item:minecraft:gravel>, <item:minecraft:clay>, <item:minecraft:gravel>],
    [<tag:items:forge:slag>, <item:minecraft:gravel>, <tag:items:forge:slag>]
]);

craftingTable.removeByName("immersivepetroleum:asphalt");
craftingTable.removeByName("immersivepetroleum:asphalt2");
craftingTable.addShaped("recipe.crafting.immersivepetroleum.asphalt", <item:immersivepetroleum:asphalt>*8, [
    [<tag:items:minecraft:sand>, <tag:items:forge:bitumen>, <tag:items:minecraft:sand>],
    [<item:minecraft:gravel>, <item:minecraft:clay>, <item:minecraft:gravel>],
    [<tag:items:minecraft:sand>, <tag:items:forge:bitumen>, <tag:items:minecraft:sand>]
]);
craftingTable.addShaped("recipe.crafting.immersivepetroleum.asphalt2", <item:immersivepetroleum:asphalt>*12, [
    [<tag:items:forge:slag>, <tag:items:forge:bitumen>, <tag:items:forge:slag>],
    [<item:minecraft:gravel>, <item:minecraft:clay>, <item:minecraft:gravel>],
    [<tag:items:forge:slag>, <tag:items:forge:bitumen>, <tag:items:forge:slag>]
]);

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

craftingTable.removeRecipe(<item:immersiveengineering:cokebrick>);
craftingTable.addShaped("recipe.crafting.immersiveengineering.cokebrick", <item:immersiveengineering:cokebrick>*3, [
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:minecraft:stone>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
]);

craftingTable.removeRecipe(<item:immersiveengineering:blastbrick>);
craftingTable.addShaped("recipe.crafting.immersiveengineering.blastbrick", <item:immersiveengineering:blastbrick>*3, [
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:immersiveengineering:cokebrick>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
]);

craftingTable.removeRecipe(<item:immersiveengineering:alloybrick>);
craftingTable.addShaped("recipe.crafting.immersiveengineering.alloybrick", <item:immersiveengineering:alloybrick>*4, [
    [<item:immersiveengineering:cokebrick>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:immersiveengineering:cokebrick>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:conveyor_basic>);
craftingTable.addShaped("recipe.crafting.immersiveengineering.conveyor_basic", <item:immersiveengineering:conveyor_basic>*2, [
    [<item:minecraft:iron_ingot>, <item:emendatusenigmatica:copper_gear>, <item:minecraft:iron_ingot>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:conveyor_extract>);
craftingTable.addShaped("recipe.crafting.immersiveengineering.conveyor_extract", <item:immersiveengineering:conveyor_extract>, [
    [<item:minecraft:hopper>],
    [<item:immersiveengineering:conveyor_basic>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:cloche>);
craftingTable.addShaped("recipe.crafting.immersiveengineering.cloche", <item:immersiveengineering:cloche>, [
    [<tag:items:forge:glass>, <item:emendatusenigmatica:lumium_gear>, <tag:items:forge:glass>],
    [<tag:items:forge:glass>, <item:create:electron_tube>, <tag:items:forge:glass>],
    [<item:emendatusenigmatica:aluminum_gear>, <item:immersiveengineering:crate>, <item:emendatusenigmatica:aluminum_gear>]
]);

craftingTable.removeRecipe(<item:createaddition:heater>);
craftingTable.addShaped("recipe.crafting.immersiveengineering.furnace_heater", <item:immersiveengineering:furnace_heater>, [
    [<item:minecraft:iron_ingot>, <item:emendatusenigmatica:copper_ingot>, <item:minecraft:iron_ingot>],
    [<item:emendatusenigmatica:copper_ingot>, <item:immersiveengineering:coil_lv>, <item:emendatusenigmatica:copper_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:blastfurnace_preheater>);
craftingTable.addShaped("recipe.crafting.immersiveengineering.blastfurnace_preheater", <item:immersiveengineering:blastfurnace_preheater>, [
    [<item:immersiveengineering:sheetmetal_iron>, <item:immersiveengineering:sheetmetal_iron>, <item:immersiveengineering:sheetmetal_iron>],
    [<item:immersiveengineering:sheetmetal_iron>, <item:minecraft:air>, <item:immersiveengineering:sheetmetal_iron>],
    [<item:immersiveengineering:sheetmetal_iron>, <item:immersiveengineering:furnace_heater>, <item:immersiveengineering:sheetmetal_iron>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:hemp_fabric>);
craftingTable.addShaped("recipe.crafting.immersiveengineering.hemp_fabric_1", <item:immersiveengineering:hemp_fabric>, [
    [<item:minecraft:air>, <item:immersiveengineering:hemp_fiber>, <item:minecraft:air>],
    [<item:immersiveengineering:hemp_fiber>, <item:minecraft:stick>, <item:immersiveengineering:hemp_fiber>],
    [<item:minecraft:air>, <item:immersiveengineering:hemp_fiber>, <item:minecraft:air>]
]);
craftingTable.addShaped("recipe.crafting.immersiveengineering.hemp_fabric_2", <item:immersiveengineering:hemp_fabric>*2, [
    [<item:minecraft:air>, <item:immersiveengineering:hemp_fiber>, <item:minecraft:air>],
    [<item:immersiveengineering:hemp_fiber>, <item:immersiveengineering:stick_treated>, <item:immersiveengineering:hemp_fiber>],
    [<item:minecraft:air>, <item:immersiveengineering:hemp_fiber>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:immersiveengineering:wirecoil_copper_ins>);
craftingTable.addShapeless("recipe.crafting.immersiveengineering.wirecoil_copper_ins", <item:immersiveengineering:wirecoil_copper_ins>, [<item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:hemp_fiber>]);
craftingTable.addShapeless("recipe.crafting.immersiveengineering.wirecoil_copper", <item:immersiveengineering:wirecoil_copper>, [<item:immersiveengineering:wirecoil_copper_ins>]);

craftingTable.removeRecipe(<item:immersiveengineering:wirecoil_electrum_ins>);
craftingTable.addShapeless("recipe.crafting.immersiveengineering.wire_electrum_ins", <item:immersiveengineering:wirecoil_electrum_ins>, [<item:immersiveengineering:wirecoil_electrum>, <item:immersiveengineering:hemp_fiber>]);
craftingTable.addShapeless("recipe.crafting.immersiveengineering.wirecoil_electrum", <item:immersiveengineering:wirecoil_electrum>, [<item:immersiveengineering:wirecoil_electrum_ins>]);
