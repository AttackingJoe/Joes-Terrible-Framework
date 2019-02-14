//define your options here
//Clothes =====================================================================================
_headgear = ["rhs_6b7_1m_emr"] call BIS_fnc_selectRandom;
_uniform = ["rhs_uniform_emr_patchless"] call BIS_fnc_selectRandom; 
_vest = ["rhs_6b23_digi_6sh92_spetsnaz2"] call BIS_fnc_selectRandom;
_backpack = ["rhs_assault_umbts"] call BIS_fnc_selectRandom;

//Weapons =====================================================================================
_gun = "rhs_weap_ak103";
_scope ="rhs_acc_ekp8_02";
//Ammo and Items, 1 class name adds 1 item ===================================================
_uniformItems = [
"rhs_30Rnd_762x39mm_polymer",
"rhs_30Rnd_762x39mm_polymer"
];

_vestItems = [
"HandGrenade",
"HandGrenade",
"SmokeShell",
"SmokeShell",
"rhs_30Rnd_762x39mm_polymer",
"rhs_30Rnd_762x39mm_polymer",
"rhs_30Rnd_762x39mm_polymer",
"rhs_30Rnd_762x39mm_polymer",
"rhs_30Rnd_762x39mm_polymer",
"rhs_30Rnd_762x39mm_polymer"
];

_backpackItems =[
"FirstAidKit",
"rhs_100Rnd_762x54mmR_green",
"rhs_100Rnd_762x54mmR_green",
"rhs_100Rnd_762x54mmR_green"

];

//Trust me, ignore this shit===================================================================
//removes old gear
removeAllWeapons _this;
removeAllItems _this;
removeUniform _this; 
removeHeadgear _this;
removeVest _this;
removeBackpack _this;
//adds default items
//===============================================================================================
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
_this addWeapon "Binocular";
//adds defined gear 
_this addHeadgear _headgear;
_this forceAddUniform _uniform;
_this addVest _vest;
_this addBackpack  _backpack;
//===============================================================================================
//Set ammount of Magazines, change second number to desired ammount
{_this additemtouniform _x} forEach _uniformItems;
{_this additemtovest _x} forEach _vestItems;
{_this additemtobackpack _x} forEach _backpackItems;

//===============================================================================================
//Gun gets added last so it spawns loaded.
_this addWeapon _gun;
_this addprimaryweaponitem _scope
