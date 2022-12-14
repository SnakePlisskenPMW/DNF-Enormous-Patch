/*******************************************************************************
 * MP_ShotgunWeaponConfig generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MP_ShotgunWeaponConfig extends MP_WeaponConfig;

defaultproperties
{
    AmmoClass='ShotgunAmmo'
    AdditionalPickupAmmoMin=19
    AdditionalPickupAmmoRnd=9
    ReloadCount=7
    ReloadClipAmmo=1
    MaxTraceDistance=800
    bReduceMaxTraceDistanceWhenShrunk=true
    MaxPenetrationDistance=0
    TraceDamageType='ShotgunDamage'
    TracerBeamSystemClass='dnTracerFX_BeamSegment'
    TracerBubblesClass='p_Weapons.Generic.WaterBubblesTracer'
    HorizShotError=0.35
    VertShotError=0.35
    bUseShrunkShotError=true
    ShrunkHorizShotError=0.28
    ShrunkVertShotError=0.28
    NumProjectiles=10
    NumCenteredProjectiles=1
    ViewKicks(0)=(bNoLerp=false,bToggleSign=false,Style=0,Function=4,FalloffActor=none,FalloffDistance=0,ShakeDuration=0.08,ShakeFrequency=0.16,ShakeMagnitude=2048,ShakeFullMagnitude=0,ShakeFullMagnitudeTime=0,ShakeName=Shotgun_ViewKick_0)
    ViewKicks(1)=(bNoLerp=false,bToggleSign=false,Style=1,Function=0,FalloffActor=none,FalloffDistance=0,ShakeDuration=0.08,ShakeFrequency=0.16,ShakeMagnitude=800,ShakeFullMagnitude=0,ShakeFullMagnitudeTime=0,ShakeName=Shotgun_ViewKick_1)
    RumbleKicks(0)=(RumbleName=Shotgun_Rumble,RumbleDuration=0.38,RumbleLeftMagnitude=0.9,RumbleRightMagnitude=0.5,FalloffActor=none,FalloffDistance=0)
    MuzzleInfo(0)=(MuzzleFireStartAnim=FireStart,MuzzleFireAnim=Fire,MuzzleFireStopAnim=FireStop,MuzzleFlashClass='p_Weapons.Shotgun_MuzzleFlash.Shotgun_MuzzleFlash_SpawnerMP',MuzzleBoneName=mount_muzzle,MuzzleMountAngles=(Pitch=0,Yaw=0,Roll=0),ShellEjectionBoneName=mount_eject,ShellEjectionDir=(X=1,Y=-1.5,Z=1),ShellEjectionVariance=(X=0,Y=0,Z=0),ShellEjectionForce=200)
    MuzzleLightClass='Weapon_LightEx_Shotgun'
    MeleeDamageType='MeleeDamage'
    bHasReloadStart=true
    bHasLoopingReload=true
    LockoutFireTime=1
    WeaponHeatAttackRate=0.5
    WeaponHeatDecayRate=0.125
    WeaponAnimName=Shotgun
    HitWaterStrength=-200
    HitWaterRadius=24
}