var megametalpress = <item:capsule:capsule>.withTag({color: 13421772 as int, size: 3 as int, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/megametalpress" as string, display: {color: 5544791 as int}, state: 5 as int, label: "Mega Metal Press" as string, canRotate: 1 as byte});
var megametalpress_blueprint = <item:capsule:capsule>.withTag({sourceInventory: {}, size: 3 as int, structureName: "config/capsule/prefabs/immersiveengineering/megametalpress" as string, display: {color: 2963801 as int}, state: 3 as int, label: "Mega Metal Press" as string});

var sciencelab = <item:capsule:capsule>.withTag({color: 13421772 as int, size: 5 as int, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/sciencelab" as string, display: {color: 5544791 as int}, state: 5 as int, label: "Science Lab" as string, canRotate: 1 as byte});
var sciencelab_blueprint = <item:capsule:capsule>.withTag({sourceInventory: {}, size: 5 as int, structureName: "config/capsule/prefabs/immersiveengineering/sciencelab" as string, display: {color: 2963801 as int}, state: 3 as int, label: "Science Lab" as string});

var megaalloyer = <item:capsule:capsule>.withTag({color: 13421772 as int, size: 3 as int, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/megaalloyer" as string, display: {color: 5544791 as int}, state: 5 as int, label: "Mega Alloyer" as string, canRotate: 1 as byte});
var megaalloyer_blueprint = <item:capsule:capsule>.withTag({sourceInventory: {}, size: 3 as int, structureName: "config/capsule/prefabs/immersiveengineering/megaalloyer" as string, display: {color: 2963801 as int}, state: 3 as int, label: "Mega Alloyer" as string});

mods.jei.JEI.addItem(megametalpress);
mods.jei.JEI.addItem(sciencelab);
mods.jei.JEI.addItem(megaalloyer);


mods.jei.JEI.addItem(megametalpress_blueprint);
mods.jei.JEI.addItem(sciencelab_blueprint);
mods.jei.JEI.addItem(megaalloyer_blueprint);