/*******************************************************************************
 * MP_PipeBombWeaponConfig generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MP_PipeBombWeaponConfig extends MP_WeaponConfig;

defaultproperties
{
    AmmoClass='PipeBombAmmo'
    AdditionalPickupAmmoMin=1
    MaxTraceDistance=0
    ProjectileClass='MP_dnPipeBombProjectile'
    bSkipProjectileFindSpot=true
    RumbleKicks(0)=(RumbleName=Pipebomb_Rumble,RumbleDuration=0.25,RumbleLeftMagnitude=0.2,RumbleRightMagnitude=0.5,FalloffActor=none,FalloffDistance=0)
    MuzzleInfo(0)=(MuzzleFireStartAnim=ThrowStart,MuzzleFireAnim=Throw,MuzzleFireStopAnim=FireStop,MuzzleFlashClass=none,MuzzleBoneName=mount_muzzle,MuzzleMountAngles=(Pitch=0,Yaw=0,Roll=0),ShellEjectionBoneName=mount_eject,ShellEjectionDir=(X=0,Y=0,Z=0),ShellEjectionVariance=(X=0,Y=0,Z=0),ShellEjectionForce=0)
    MeleeDamageType='MeleeDamage'
    bMeleeInterruptFiring=false
    bMeleeInterruptReloading=false
    AmmoWarnPCT=0.25
    bHUDAmmoActivateOnReload=false
    WeaponAnimName=PipeBomb
}