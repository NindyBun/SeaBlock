import crafttweaker.api.item.IItemStack;

var itemRemoveHide as IItemStack[] = [
    <item:mekanism:qio_drive_array>,
    <item:mekanism:portable_qio_dashboard>,
    <item:mekanism:qio_dashboard>,
    <item:mekanism:qio_importer>,
    <item:mekanism:qio_exporter>,
    <item:mekanism:qio_redstone_adapter>,
    <item:mekanism:qio_drive_base>,
    <item:mekanism:qio_drive_hyper_dense>,
    <item:mekanism:qio_drive_time_dilating>,
    <item:mekanism:qio_drive_supermassive>,
];

for item in itemRemoveHide {
    mods.jei.JEI.hideItem(item);
    craftingTable.removeRecipe(item);
}

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

craftingTable.removeRecipe(<item:mekanism:upgrade_speed>);
craftingTable.addShaped("recipe.crafting.mekanism.upgrade_speed", <item:mekanism:upgrade_speed>, [
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>],
    [<item:mekanism:alloy_infused>, <item:emendatusenigmatica:osmium_dust>, <item:mekanism:alloy_infused>],
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:mekanism:upgrade_energy>);
craftingTable.addShaped("recipe.crafting.mekanism.upgrade_energy", <item:mekanism:upgrade_energy>, [
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>],
    [<item:mekanism:alloy_infused>, <item:emendatusenigmatica:gold_dust>, <item:mekanism:alloy_infused>],
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:mekanism:upgrade_filter>);
craftingTable.addShaped("recipe.crafting.mekanism.upgrade_filter", <item:mekanism:upgrade_filter>, [
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>],
    [<item:mekanism:alloy_infused>, <item:emendatusenigmatica:tin_dust>, <item:mekanism:alloy_infused>],
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:mekanism:upgrade_muffling>);
craftingTable.addShaped("recipe.crafting.mekanism.upgrade_muffling", <item:mekanism:upgrade_muffling>, [
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>],
    [<item:mekanism:alloy_infused>, <item:emendatusenigmatica:steel_dust>, <item:mekanism:alloy_infused>],
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:mekanism:upgrade_gas>);
craftingTable.addShaped("recipe.crafting.mekanism.upgrade_gas", <item:mekanism:upgrade_gas>, [
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>],
    [<item:mekanism:alloy_infused>, <item:emendatusenigmatica:iron_dust>, <item:mekanism:alloy_infused>],
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:mekanism:upgrade_anchor>);
craftingTable.addShaped("recipe.crafting.mekanism.upgrade_anchor", <item:mekanism:upgrade_anchor>, [
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>],
    [<item:mekanism:alloy_infused>, <item:emendatusenigmatica:ender_dust>, <item:mekanism:alloy_infused>],
    [<item:minecraft:air>, <item:create:electron_tube>, <item:minecraft:air>]
]);

<recipetype:mekanism:crushing>.removeByName("mekanism:processing/steel/ingot_to_dust");

<recipetype:mekanism:metallurgic_infusing>.removeByName("mekanism:processing/steel/enriched_iron_to_dust");
<recipetype:mekanism:metallurgic_infusing>.addRecipe("recipe.mekanism.metallurgic_infusing.steel/enriched_iron_to_dust", <item:mekanism:enriched_iron>, <infuse_type:mekanism:carbon>*10, <item:emendatusenigmatica:steel_dust>);

craftingTable.removeRecipe(<item:mekanism:superheating_element>);
craftingTable.addShaped("recipe.crafting.mekanism.superheating_element", <item:mekanism:superheating_element>, [
    [<item:minecraft:redstone>, <item:immersiveengineering:furnace_heater>, <item:minecraft:redstone>],
    [<item:immersiveengineering:furnace_heater>, <item:mekanism:steel_casing>, <item:immersiveengineering:furnace_heater>],
    [<item:minecraft:redstone>, <item:immersiveengineering:furnace_heater>, <item:minecraft:redstone>]
]);

craftingTable.removeRecipe(<item:mekanism:radioactive_waste_barrel>);
craftingTable.addShaped("recipe.crafting.mekanism.radioactive_waste_barrel", <item:mekanism:radioactive_waste_barrel>, [
    [<item:emendatusenigmatica:steel_ingot>, <item:emendatusenigmatica:lead_ingot>, <item:emendatusenigmatica:steel_ingot>],
    [<item:emendatusenigmatica:lead_ingot>, <item:mekanism:ultimate_fluid_tank>, <item:emendatusenigmatica:lead_ingot>],
    [<item:emendatusenigmatica:steel_ingot>, <item:emendatusenigmatica:lead_ingot>, <item:emendatusenigmatica:steel_ingot>]
]);

craftingTable.removeRecipe(<item:mekanism:energized_smelter>);
craftingTable.addShaped("recipe.crafting.mekanism.energized_smelter", <item:mekanism:energized_smelter>, [
    [<item:minecraft:redstone>, <item:mekanism:basic_control_circuit>, <item:minecraft:redstone>],
    [<item:minecraft:furnace>, <item:mekanism:steel_casing>, <item:minecraft:furnace>],
    [<item:minecraft:redstone>, <item:mekanism:basic_control_circuit>, <item:minecraft:redstone>]
]);

craftingTable.removeRecipe(<item:mekanism:resistive_heater>);
craftingTable.addShaped("recipe.crafting.mekanism.resistive_heater", <item:mekanism:resistive_heater>, [
    [<item:emendatusenigmatica:tin_ingot>, <item:minecraft:redstone>, <item:emendatusenigmatica:tin_ingot>],
    [<item:immersiveengineering:furnace_heater>, <item:mekanism:steel_casing>, <item:immersiveengineering:furnace_heater>],
    [<item:emendatusenigmatica:tin_ingot>, <item:mekanism:energy_tablet>, <item:emendatusenigmatica:tin_ingot>]
]);

craftingTable.removeRecipe(<item:mekanism:supercharged_coil>);
craftingTable.addShaped("recipe.crafting.mekanism.supercharged_coil", <item:mekanism:supercharged_coil>, [
    [<item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:copper_ingot>],
    [<item:mekanism:ultimate_control_circuit>, <item:mekanism:laser>, <item:mekanism:ultimate_control_circuit>],
    [<item:mekanism:pellet_polonium>, <item:mekanism:ultimate_energy_cube>, <item:mekanism:pellet_polonium>]
]);

var factory as IItemStack[] = [
    <item:mekanism:energized_smelter>,
    <item:mekanism:enrichment_chamber>,
    <item:mekanism:crusher>,
    <item:mekanism:osmium_compressor>,
    <item:mekanism:combiner>,
    <item:mekanism:purification_chamber>,
    <item:mekanism:chemical_injection_chamber>,
    <item:mekanism:metallurgic_infuser>,
    <item:mekanism:precision_sawmill>,
];
var basic_factory as IItemStack[] = [
    <item:mekanism:basic_smelting_factory>,
    <item:mekanism:basic_enriching_factory>,
    <item:mekanism:basic_crushing_factory>,
    <item:mekanism:basic_compressing_factory>,
    <item:mekanism:basic_combining_factory>,
    <item:mekanism:basic_purifying_factory>,
    <item:mekanism:basic_injecting_factory>,
    <item:mekanism:basic_infusing_factory>,
    <item:mekanism:basic_sawing_factory>,
];
var advanced_factory as IItemStack[] = [
    <item:mekanism:advanced_smelting_factory>,
    <item:mekanism:advanced_enriching_factory>,
    <item:mekanism:advanced_crushing_factory>,
    <item:mekanism:advanced_compressing_factory>,
    <item:mekanism:advanced_combining_factory>,
    <item:mekanism:advanced_purifying_factory>,
    <item:mekanism:advanced_injecting_factory>,
    <item:mekanism:advanced_infusing_factory>,
    <item:mekanism:advanced_sawing_factory>,
];
var elite_factory as IItemStack[] = [
    <item:mekanism:elite_smelting_factory>,
    <item:mekanism:elite_enriching_factory>,
    <item:mekanism:elite_crushing_factory>,
    <item:mekanism:elite_compressing_factory>,
    <item:mekanism:elite_combining_factory>,
    <item:mekanism:elite_purifying_factory>,
    <item:mekanism:elite_injecting_factory>,
    <item:mekanism:elite_infusing_factory>,
    <item:mekanism:elite_sawing_factory>,
];
var ultimate_factory as IItemStack[] = [
    <item:mekanism:ultimate_smelting_factory>,
    <item:mekanism:ultimate_enriching_factory>,
    <item:mekanism:ultimate_crushing_factory>,
    <item:mekanism:ultimate_compressing_factory>,
    <item:mekanism:ultimate_combining_factory>,
    <item:mekanism:ultimate_purifying_factory>,
    <item:mekanism:ultimate_injecting_factory>,
    <item:mekanism:ultimate_infusing_factory>,
    <item:mekanism:ultimate_sawing_factory>,
];

craftingTable.removeRecipe(<item:mekanism:purification_chamber>);
craftingTable.addShaped("recipe.crafting.mekanism.purification_chamber", <item:mekanism:purification_chamber>, [
    [<item:mekanism:alloy_infused>, <item:mekanism:advanced_control_circuit>, <item:mekanism:alloy_infused>],
    [<item:mekanism:electrolytic_core>, <item:mekanism:enrichment_chamber>, <item:mekanism:electrolytic_core>],
    [<item:mekanism:alloy_infused>, <item:mekanism:advanced_control_circuit>, <item:mekanism:alloy_infused>]
]);

craftingTable.removeRecipe(<item:mekanism:chemical_injection_chamber>);
craftingTable.addShaped("recipe.crafting.mekanism.chemical_injection_chamber", <item:mekanism:chemical_injection_chamber>, [
    [<item:mekanism:alloy_reinforced>, <item:mekanism:elite_control_circuit>, <item:mekanism:alloy_reinforced>],
    [<item:create:spout>, <item:mekanism:purification_chamber>, <item:create:spout>],
    [<item:mekanism:alloy_reinforced>, <item:mekanism:elite_control_circuit>, <item:mekanism:alloy_reinforced>]
]);

craftingTable.removeRecipe(<item:mekanism:basic_tier_installer>);
craftingTable.removeByRegex("mekanism:factory/basic.*");
craftingTable.addShaped("recipe.crafting.mekanism.tier_installer/basic", <item:mekanism:basic_tier_installer>, [
    [<item:create:electron_tube>, <item:mekanism:basic_control_circuit>, <item:create:electron_tube>],
    [<item:emendatusenigmatica:silver_gear>, <tag:items:minecraft:planks>, <item:emendatusenigmatica:silver_gear>],
    [<item:create:electron_tube>, <item:mekanism:basic_control_circuit>, <item:create:electron_tube>]
]);
for i, fact in basic_factory {
    craftingTable.addShaped("recipe.crafting.mekanism.basic_factory/"+i, basic_factory[i], [
        [<item:create:electron_tube>, <item:mekanism:basic_control_circuit>, <item:create:electron_tube>],
        [<item:emendatusenigmatica:silver_gear>, factory[i], <item:emendatusenigmatica:silver_gear>],
        [<item:create:electron_tube>, <item:mekanism:basic_control_circuit>, <item:create:electron_tube>]
    ]);
}

craftingTable.removeRecipe(<item:mekanism:advanced_tier_installer>);
craftingTable.removeByRegex("mekanism:factory/advanced.*");
craftingTable.addShaped("recipe.crafting.mekanism.tier_installer/advanced", <item:mekanism:advanced_tier_installer>, [
    [<item:mekanism:alloy_infused>, <item:mekanism:advanced_control_circuit>, <item:mekanism:alloy_infused>],
    [<item:emendatusenigmatica:electrum_gear>, <tag:items:minecraft:planks>, <item:emendatusenigmatica:electrum_gear>],
    [<item:mekanism:alloy_infused>, <item:mekanism:advanced_control_circuit>, <item:mekanism:alloy_infused>]
]);
for i, fact in advanced_factory {
    craftingTable.addShaped("recipe.crafting.mekanism.advanced_factory/"+i, advanced_factory[i], [
        [<item:mekanism:alloy_infused>, <item:mekanism:advanced_control_circuit>, <item:mekanism:alloy_infused>],
        [<item:emendatusenigmatica:electrum_gear>, basic_factory[i], <item:emendatusenigmatica:electrum_gear>],
        [<item:mekanism:alloy_infused>, <item:mekanism:advanced_control_circuit>, <item:mekanism:alloy_infused>]
    ]);
}

craftingTable.removeRecipe(<item:mekanism:elite_tier_installer>);
craftingTable.removeByRegex("mekanism:factory/elite.*");
craftingTable.addShaped("recipe.crafting.mekanism.tier_installer/elite", <item:mekanism:elite_tier_installer>, [
    [<item:mekanism:alloy_reinforced>, <item:mekanism:elite_control_circuit>, <item:mekanism:alloy_reinforced>],
    [<item:emendatusenigmatica:enderium_gear>, <tag:items:minecraft:planks>, <item:emendatusenigmatica:enderium_gear>],
    [<item:mekanism:alloy_reinforced>, <item:mekanism:elite_control_circuit>, <item:mekanism:alloy_reinforced>]
]);
for i, fact in elite_factory {
    craftingTable.addShaped("recipe.crafting.mekanism.elite_factory/"+i, elite_factory[i], [
        [<item:mekanism:alloy_reinforced>, <item:mekanism:elite_control_circuit>, <item:mekanism:alloy_reinforced>],
        [<item:emendatusenigmatica:enderium_gear>, advanced_factory[i], <item:emendatusenigmatica:enderium_gear>],
        [<item:mekanism:alloy_reinforced>, <item:mekanism:elite_control_circuit>, <item:mekanism:alloy_reinforced>]
    ]);
}

craftingTable.removeRecipe(<item:mekanism:ultimate_tier_installer>);
craftingTable.removeByRegex("mekanism:factory/ultimate.*");
craftingTable.addShaped("recipe.crafting.mekanism.tier_installer/ultimate", <item:mekanism:ultimate_tier_installer>, [
    [<item:mekanism:alloy_atomic>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:alloy_atomic>],
    [<item:emendatusenigmatica:uranium_gear>, <tag:items:minecraft:planks>, <item:emendatusenigmatica:uranium_gear>],
    [<item:mekanism:alloy_atomic>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:alloy_atomic>]
]);
for i, fact in ultimate_factory {
    craftingTable.addShaped("recipe.crafting.mekanism.ultimate_factory/"+i, ultimate_factory[i], [
        [<item:mekanism:alloy_atomic>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:alloy_atomic>],
        [<item:emendatusenigmatica:uranium_gear>, elite_factory[i], <item:emendatusenigmatica:uranium_gear>],
        [<item:mekanism:alloy_atomic>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:alloy_atomic>]
    ]);
}

craftingTable.removeRecipe(<item:mekanism:basic_bin>);
craftingTable.addShaped("recipe.crafting.mekanism.bin/basic", <item:mekanism:basic_bin>, [
    [<tag:items:forge:cobblestone>, <item:mekanism:basic_control_circuit>, <tag:items:forge:cobblestone>],
    [<item:minecraft:redstone>, <tag:items:storagedrawers:drawers>, <item:minecraft:redstone>],
    [<tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>]
]);

