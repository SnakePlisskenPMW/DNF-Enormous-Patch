/*******************************************************************************
 * WeaponConfig generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class WeaponConfig extends Object
    abstract
    native;

var() class<DamageType> FreezeDamageType;
var() class<Ammo> AmmoClass;
var() int AmmoExpenditure;
var() int AdditionalPickupAmmoMin;
var() int AdditionalPickupAmmoRnd;
var() int ReloadCount;
var() int ReloadClipAmmo;
var() float MaxTraceDistance;
var() bool bReduceMaxTraceDistanceWhenShrunk;
var() int MaxTracePenetrationCount;
var() float MaxPenetrationDistance;
var() class<TraceDamageType> TraceDamageType;
var() STraceFlags TraceFlags;
var() class<BeamSystem> TracerBeamSystemClass;
var() float TracerBeamChance;
var() class<SoftParticleSystem> TracerBubblesClass;
var() float HorizShotError;
var() float VertShotError;
var() float ZoomErrorPct;
var() bool bUseShrunkShotError;
var() float ShrunkHorizShotError;
var() float ShrunkVertShotError;
var() class<Projectile> ProjectileClass;
var() bool bFireProjFromMuzzle;
var() bool bCheatMuzzleBlockage;
var() bool bSkipProjectileFindSpot;
var() int NumProjectiles;
var() int NumCenteredProjectiles;
var() class<Projectile> ImpactProjectileClass;
var() array<SViewShakeInfo> ViewKicks;
var() array<SRumbleInfo> RumbleKicks;
var() array<SMuzzleInfo> MuzzleInfo;
var() class<Weapon_LightEx> MuzzleLightClass;
var name MuzzleLightBoneName;
var() string MuzzleShellClassName;
var() bool bMuzzleShellEjectionOwnerVelIndependent;
var() float MeleeMovementSpeedScale;
var() int NumMeleeAttacks;
var() float MeleeTraceDistance;
var() float MeleeTraceDistanceShrunk;
var() Vector MeleeHitExtent;
var() float MeleeHitDamageBase;
var() float MeleeHitDamageVariance;
var() class<TraceDamageType> MeleeDamageType;
var() bool bHasFireStart;
var() bool bHasLoopingFire;
var() bool bHasFireStop;
var() bool bHasUnFire;
var() bool bHasReloadStart;
var() bool bHasLoopingReload;
var() bool bHasReloadStop;
var() bool bFireInterruptFiring;
var() bool bMeleeInterruptFiring;
var() bool bMeleeInterruptReloading;
var() bool bReloadInterruptFiring;
var() bool bForceResetFireStart;
var() bool bForceResetFire;
var() bool bForceResetFireStop;
var() bool bNeedWeaponHUD;
var() bool bDrawCrosshair;
var() float AmmoWarnPCT;
var() bool bFlashHUDOnActivate;
var() bool bHUDAmmoActivateOnReload;
var() bool AIFakeReload;
var bool bStandardWeaponSwitch;
var float LockoutFireTime;
var float WeaponHeatAttackRate;
var float WeaponHeatDecayRate;
var float ZoomAmount;
var name DoneActivatingStateTransition;
var name WeaponAnimName;
var float HitWaterStrength;
var float HitWaterRadius;
var() bool bDebugShotTraces;
var() Color DebugColor;
var() float DebugShotTracesTime;

defaultproperties
{
    AmmoExpenditure=1
    MaxTraceDistance=3000
    MaxPenetrationDistance=256
    TracerBeamChance=0.5
    ZoomErrorPct=1
    bFireProjFromMuzzle=true
    NumProjectiles=1
    MuzzleInfo(0)=(MuzzleFireStartAnim=FireStart,MuzzleFireAnim=Fire,MuzzleFireStopAnim=FireStop,MuzzleFlashClass=none,MuzzleBoneName=mount_muzzle,MuzzleMountAngles=(Pitch=0,Yaw=0,Roll=0),ShellEjectionBoneName=mount_eject,ShellEjectionDir=(X=0,Y=0,Z=0),ShellEjectionVariance=(X=0,Y=0,Z=0),ShellEjectionForce=0)
    MuzzleLightBoneName=mount_muzzle
    MeleeMovementSpeedScale=1
    NumMeleeAttacks=1
    MeleeTraceDistance=72
    MeleeTraceDistanceShrunk=36
    MeleeHitExtent=(X=16,Y=16,Z=16)
    MeleeHitDamageBase=40
    bMeleeInterruptFiring=true
    bMeleeInterruptReloading=true
    bReloadInterruptFiring=true
    bForceResetFireStart=true
    bForceResetFire=true
    bForceResetFireStop=true
    bNeedWeaponHUD=true
    bDrawCrosshair=true
    AmmoWarnPCT=0.3
    bFlashHUDOnActivate=true
    bHUDAmmoActivateOnReload=true
    bStandardWeaponSwitch=true
    WeaponHeatAttackRate=0.25
    WeaponHeatDecayRate=0.25
    DoneActivatingStateTransition=idle
    WeaponAnimName=Undefined
    HitWaterStrength=-400
    HitWaterRadius=48
    DebugColor=(R=255,G=0,B=0,A=255)
    DebugShotTracesTime=999
}