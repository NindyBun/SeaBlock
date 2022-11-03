craftingTable.addShapeless("recipe.crafting.cobble_1", <item:minecraft:gravel>, [<item:minecraft:cobblestone>, <item:immersiveengineering:hammer>.anyDamage()]);
craftingTable.addShapeless("recipe.crafting.cobble_2", <item:minecraft:gravel>, [<item:minecraft:cobblestone>, <item:emendatusenigmatica:enigmatic_hammer>.anyDamage()]);

craftingTable.addShapeless("recipe.crafting.gravel_1", <item:minecraft:sand>, [<item:minecraft:gravel>, <item:immersiveengineering:hammer>.anyDamage()]);
craftingTable.addShapeless("recipe.crafting.gravel_2", <item:minecraft:sand>, [<item:minecraft:gravel>, <item:emendatusenigmatica:enigmatic_hammer>.anyDamage()]);

craftingTable.addShapeless("recipe.crafting.priming_dust", <item:contenttweaker:priming_dust>*8, [<item:minecraft:sand>, <item:minecraft:gravel>]);

craftingTable.addShaped("recipe.crafting.red_primer", <item:contenttweaker:red_primer>, [
    [<item:contenttweaker:priming_dust>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.green_primer", <item:contenttweaker:green_primer>, [
    [<item:minecraft:air>, <item:contenttweaker:priming_dust>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.blue_primer", <item:contenttweaker:blue_primer>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:contenttweaker:priming_dust>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.purple_primer", <item:contenttweaker:purple_primer>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:contenttweaker:priming_dust>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.yellow_primer", <item:contenttweaker:yellow_primer>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:contenttweaker:priming_dust>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);

craftingTable.addShaped("recipe.crafting.white_primer", <item:contenttweaker:white_primer>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:contenttweaker:priming_dust>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
]);