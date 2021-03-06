
//define your options here
//Clothes =====================================================================================
_headgear = ["rhsusf_ach_helmet_ucp"] call BIS_fnc_selectRandom;
_uniform = ["rhs_uniform_acu_ucp"] call BIS_fnc_selectRandom; 
_vest = ["rhsusf_iotv_ucp_Rifleman"] call BIS_fnc_selectRandom;
_backpack = ["rhsusf_assault_eagleaiii_ucp"] call BIS_fnc_selectRandom;

//Weapons =====================================================================================
_gun = "rhs_weap_m4";
_scope ="rhsusf_acc_eotech_552";
_launcher ="rhs_weap_M136";
_launcherammo="rhs_m136_mag";
//Ammo and Items, 1 class name adds 1 item ===================================================
_uniformItems = [
"rhs_mag_30Rnd_556x45_M855A1_Stanag",
"rhs_mag_30Rnd_556x45_M855A1_Stanag"
];

_vestItems = [
"HandGrenade",
"HandGrenade",
"SmokeShell",
"SmokeShell",
"rhs_mag_30Rnd_556x45_M855A1_Stanag",
"rhs_mag_30Rnd_556x45_M855A1_Stanag",
"rhs_mag_30Rnd_556x45_M855A1_Stanag",
"rhs_mag_30Rnd_556x45_M855A1_Stanag",
"rhs_mag_30Rnd_556x45_M855A1_Stanag",
"rhs_mag_30Rnd_556x45_M855A1_Stanag"
];

_backpackItems =[
"FirstAidKit"
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
_this addWeapon _launcher;
_this addprimaryweaponitem _scope
