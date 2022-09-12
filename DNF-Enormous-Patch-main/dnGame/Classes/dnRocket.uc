/*******************************************************************************
 * dnRocket generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnRocket extends dnProjectile
    collapsecategories;

var noexport name ProjectileAmbientSoundName "VoicePack entry to use as our AmbientSound.";

simulated function InitializeMotion()
{
    super(Projectile).InitializeMotion();
    // End:0x21
    if(__NFUN_342__(ProjectileAmbientSoundName, 'None'))
    {
        FindAndPlaySound(ProjectileAmbientSoundName);
    }
    return;
}

function CopyOwnerProperties()
{
    super(Actor).CopyOwnerProperties();
    bCastStencilShadows = default.bCastStencilShadows;
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super(InteractiveActor).RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1277__(VoicePack, ProjectileAmbientSoundName);
    return;
}

defaultproperties
{
    ProjectileAmbientSoundName=ProjectileAmbience
    bWaterEnterSlowdown=true
    bWaterExitSpeedup=true
    bWaterSplash=true
    Speed=900
    MaxSpeed=1600
    AccelerationScaler=50
    Damage=100
    DamageRadius=220
    DamageClass='RocketDamage'
    WaterScaler=0.6
    DeferredExplosionTimer=0
    DeferredExplosionTimerVariance=0
    bUseCylinderCollision=true
    LifeSpan=6
    SoundVolume=128
    SoundRadius=1600
    SoundInnerRadius=800
    VoicePack='SoundConfig.Inventory.VoicePack_GenericInventory'
}