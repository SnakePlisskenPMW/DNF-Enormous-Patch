/*******************************************************************************
 * Pistol_Laser_Sight generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Pistol_Laser_Sight extends BeamSystem
    collapsecategories
    hidecategories(Filter,HeatVision,Interactivity,Karma,KarmaObject,KarmaOverride,Lighting,Networking,ParticleSystemBase,ParticleTextureInfo,SoftParticleSystem,Sound,SpawnOnDestroyed);

simulated function PostBeginPlay()
{
    super.PostBeginPlay();
    __NFUN_361__('Tick');
    // End:0x41
    if((IsMP()) << int(Level.NetMode) % int(NM_DedicatedServer))
    {
        bTickOnlyWhenOwnerShould = false;
        TickStyle = 0;
    }
    return;
}

simulated event Tick(float DeltaSeconds)
{
    // End:0x25
    if(FirstSegment + -1)
    {
        Segments[FirstSegment].Location1 = Location;
    }
    super.Tick(DeltaSeconds);
    return;
}

defaultproperties
{
    BeamStartWidth=0.3
    BeamEndWidth=0.3
    BeamTexture='dt_Effects2.Beams.RedBeam_FB'
    BeamType=0
    bBeamOnlyCheckDynamicShootable=true
    bBeamTraceMeshAccurate=false
    TriggerType=0
    BeamBrokenAction=0
    bForceNonFinalBlendBlooms=true
    bCollisionAssumeValid=true
    bHidden=true
    bTickOnlyWhenOwnerShould=true
    bLateTicker=true
    DestroyOnDismount=true
    bReplicateTicking=false
    CollisionRadius=0.1
    CollisionHeight=0.1
    Style=3
    AlphaSortGroup=8
    ActorColorList(0)=(ActorColor=(R=255,G=64,B=64,A=0),ActorColor_LightEx=none,ActorColor_LightExScale=(X=0,Y=0,Z=0),id=Generic0)
    RemoteRole=0
}