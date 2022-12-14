/*******************************************************************************
 * gascan generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class gascan extends dnControlQuestItem;

defaultproperties
{
    ControlClass='dnControl_GasTank'
    QuestItemTip="<?int?dnDecorations.gascan.QuestItemTip?>"
    HUDIcon='dt_hud.Inventory.qitem_gascan'
    HUDGlowIcon='dt_hud.Inventory.qitem_gascan_glow_fb'
    WeaponConfig='GasCanWeaponConfig'
    bActivatable=false
    InventoryReferenceClass='gascan'
    PickupClass='GasCanPickup'
    AutoRegisterIKClasses(0)='dnGame.IKSystemInfo_Shotgun'
    DrawType=8
    StaticMesh='sm_class_decorations.Containers.gascan_pickup'
    VoicePack='SoundConfig.Inventory.VoicePack_GasCan'
}