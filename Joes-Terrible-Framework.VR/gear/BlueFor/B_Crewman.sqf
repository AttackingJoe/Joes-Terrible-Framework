
_this setUnitTrait ["Engineer",true]; //lets this dude repair
//define your options here
//Clothes =====================================================================================
_headgear = ["rhsusf_hgu56p_black"] call BIS_fnc_selectRandom;
_uniform = ["rhs_uniform_acu_ucp"] call BIS_fnc_selectRandom; 
_vest = ["rhsusf_iotv_ucp_Repair"] call BIS_fnc_selectRandom;
_backpack = ["rhsusf_assault_eagleaiii_ucp"] call BIS_fnc_selectRandom;

//Weapons =====================================================================================
_gun = "rhsusf_weap_MP7A2";
_scope ="rhsusf_acc_eotech_552";
//Ammo and Items, 1 class name adds 1 item ===================================================
_uniformItems = [
"rhsusf_mag_40Rnd_46x30_FMJ",
"rhsusf_mag_40Rnd_46x30_FMJ"
];

_vestItems = [
"SmokeShell",
"SmokeShell",
"SmokeShell",
"SmokeShell",
"rhsusf_mag_40Rnd_46x30_FMJ",
"rhsusf_mag_40Rnd_46x30_FMJ",
"rhsusf_mag_40Rnd_46x30_FMJ",
"rhsusf_mag_40Rnd_46x30_FMJ",
"rhsusf_mag_40Rnd_46x30_FMJ",
"rhsusf_mag_40Rnd_46x30_FMJ"
];

_backpackItems =[
"FirstAidKit",
"ToolKit"
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
