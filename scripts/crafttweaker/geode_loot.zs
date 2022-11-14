import mods.createautomated.RequiredProgress;

<recipetype:createautomated:extracting>.addRecipe("recipe.createautomated.extracting.common_geode", <item:minecraft:cobblestone>, <item:contenttweaker:common_geode>, 1, 
    new RequiredProgress().takesSeconds(8), 1
);

<recipetype:createautomated:extracting>.addRecipe("recipe.createautomated.extracting.uncommon_geode", <item:minecraft:polished_blackstone>, <item:contenttweaker:uncommon_geode>, 4, 
    new RequiredProgress().takesSeconds(16), 1
);

<recipetype:create:milling>.addRecipe("recipe.create.milling.common_geode", 
    [   <item:minecraft:cobblestone>, 
        <item:emendatusenigmatica:iron_chunk> % 85,
        <item:emendatusenigmatica:copper_chunk> % 85,
        <item:minecraft:coal> % 85,
        <item:minecraft:quartz> % 75,
        <item:minecraft:redstone> % 65,
        <item:minecraft:diamond> % 65,
    ], <item:contenttweaker:common_geode>);

<recipetype:create:milling>.addRecipe("recipe.create.milling.uncommon_geode", 
    [   <item:minecraft:cobblestone>, 
        <item:emendatusenigmatica:gold_chunk> % 65,
        <item:emendatusenigmatica:tin_chunk> % 65,
        <item:emendatusenigmatica:silver_chunk> % 65,
        <item:emendatusenigmatica:zinc_chunk> % 65,
        <item:emendatusenigmatica:lead_chunk> % 65,
        <item:emendatusenigmatica:nickel_chunk> % 65,
    ], <item:contenttweaker:uncommon_geode>);

<recipetype:create:milling>.addRecipe("recipe.create.milling.rare_geode", 
    [   <item:minecraft:cobblestone>,
        <item:emendatusenigmatica:aluminum_chunk> * 2,
        <item:emendatusenigmatica:aluminum_chunk> % 50,
        <item:emendatusenigmatica:osmium_chunk> * 2,
        <item:emendatusenigmatica:osmium_chunk> % 50,
        <item:emendatusenigmatica:uranium_chunk> * 2,
        <item:emendatusenigmatica:uranium_chunk> % 50
    ], <item:contenttweaker:rare_geode>);