/*******************************************************************************
 * dnGrenadeLauncherProjectile generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnGrenadeLauncherProjectile extends dnPipeBombProjectile
    collapsecategories;

var bool bDebugImpacts;

simulated function InitializeMotion()
{
    Velocity = Caps(Speed *= Clamp(Owner.Velocity), Vector(Rotation));
    Acceleration = Caps(AccelerationScaler, Vector(Rotation));
    return;
}

simulated function ExecuteProjectileHitSomething(Vector HitNormal, Actor Other)
{
    // End:0x46
    if(bDebugImpacts)
    {
        BroadcastLog(__NFUN_303__(__NFUN_302__(string(self), ":ExecuteProjectileHitSomething - Other:"), string(Other)));
    }
    super(Projectile).ExecuteProjectileHitSomething(HitNormal, Other);
    return;
}

defaultproperties
{
    bAutoDecalBomb=false
    bRotationFollowsVelocity=true
    UpwardsBoost=(X=0,Y=0,Z=70)
    bSpin=false
    bShowHUDWarning=false
    bExplodeOnDamage=false
    bSkipVisibilityTests=true
    Speed=2500
    MaxSpeed=2.5E+07
    Damage=60
    DamageRadius=220
    DamageFalloffStart=-0.5
    ExplosionClass='p_Weapons.Grenade_Explosion.Grenade_Explosion_Spawner'
    ExplosionSoundName=MGLaunch_GrenExplode
    DeferredExplosionTimer=0
    DeferredExplosionTimerVariance=0
    MountOnSpawn(0)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=6.5,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(1)=(bSkipVerifySelf=false,SpawnClass='p_Weapons.GrenadeLauncher_Trail.GrenadeLauncher_Trail_line',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=-6.5,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(2)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=6.5,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    Physics=2
    bBlockActors=true
    bIsPipeBombOrTripMine=false
    StaticMesh='sm_class_decorations.Grenade_launcher.GrenadeRound'
    VoicePack='SoundConfig.Interactive.VoicePack_Decorations'
}