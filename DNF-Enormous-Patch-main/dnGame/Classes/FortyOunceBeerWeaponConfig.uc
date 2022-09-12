/*******************************************************************************
 * FortyOunceBeerWeaponConfig generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class FortyOunceBeerWeaponConfig extends WeaponConfig;

defaultproperties
{
    AmmoClass='FortyOunceBeerAmmo'
    AmmoExpenditure=0
    AdditionalPickupAmmoMin=1
    MuzzleInfo(0)=(MuzzleFireStartAnim=FireStart,MuzzleFireAnim=BeerActivate,MuzzleFireStopAnim=FireStop,MuzzleFlashClass=none,MuzzleBoneName=mount_muzzle,MuzzleMountAngles=(Pitch=0,Yaw=0,Roll=0),ShellEjectionBoneName=mount_eject,ShellEjectionDir=(X=0,Y=0,Z=0),ShellEjectionVariance=(X=0,Y=0,Z=0),ShellEjectionForce=0)
    NumMeleeAttacks=0
    bFlashHUDOnActivate=false
    bStandardWeaponSwitch=false
    DoneActivatingStateTransition=ActivateComplete
    WeaponAnimName=noweapon
}