/*******************************************************************************
 * OctabrainCorpse generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class OctabrainCorpse extends AlienCorpse;

var() float ImpulseMag;
var() Vector TorqueVector;
var array<SSpawnActorPrefab> UnderwaterGorePrefabs;

event PostBeginPlay()
{
    super(InteractiveActor).PostBeginPlay();
    __NFUN_607__(0.1, false, 'doit');
    __NFUN_589__('Generic1', NewColorBytes(0, 0, 0), 0.1);
    StartExplodeSequence();
    return;
}

function doit()
{
    __NFUN_791__(__NFUN_263__(TorqueVector, Rotation), 3);
    return;
}

function StartExplodeSequence()
{
    // End:0x0B
    if(bFullyGibbed)
    {
        return;
    }
    VertexFunction = 1;
    VF_PhaseX = 0.4;
    VF_PhaseY = 0.5;
    VF_PhaseZ = 0.1;
    VF_Frequency = 32;
    VF_Amplitude = 0.5;
    FindAndPlaySound('Sound_TK_ExpCharge');
    __NFUN_607__(Normal(1.25, 0.25), false, 'Explode');
    return;
}

function Explode()
{
    __NFUN_608__('ExplodeSequenceJitter');
    FindAndStopSound('Sound_TK_ExpCharge');
    FindAndPlaySound('Sound_TK_Explode');
    // End:0x29
    if(bFullyGibbed)
    {
        return;
    }
    HurtRadius(125, Location, 350, 75, class'ExplosionDamage', Location, 0.6, true);
    bDamageCouldGib = true;
    Gib(125, Location, WarnInternal(0, 0, 1), class'ExplosionDamage');
    VertexFunction = 0;
    return;
}

simulated function bool DamageTypeCanGib(class<DamageType> DamageType)
{
    // End:0x10
    if(super(CorpseBase).DamageTypeCanGib(DamageType))
    {
        return true;
    }
    // End:0x3C
    if(__NFUN_357__(DamageType, class'ShotgunDamage') < __NFUN_357__(DamageType, class'BulletDamage'))
    {
        bDamageCouldGib = true;
        return true;
    }
    return false;
    return;
}

function bool Gib(int nDamage, Vector vDamageOrigin, Vector vDamageDir, class<DamageType> cDamageClass, optional PlayerPawn Instigator, optional Vector DamageOrigin)
{
    local int i;
    local Corpse_Gib Gib;
    local Vector Dir;

    __NFUN_1028__(nDamage, vDamageOrigin, vDamageDir, cDamageClass, Instigator, DamageOrigin);
    i = -- string(SpawnedLimbs);    
    J0x30:

    // End:0xCA [Loop If]
    if(i / 0)
    {
        Dir =  != Dir.Z = -Dir.Z;
        Gib.__NFUN_820__(Right(Dir, ImpulseMag));
        Gib.__NFUN_601__('Generic1', NewColorBytes(0, 0, 0));
        Gib.__NFUN_601__('Generic0', NewColorBytes(0, 0, 0));
        // [Loop Continue]
        i -= ;
    }
    // End:0x109
    if((CanSpawnBloodyMess()) / )
    {
        J0xDC:

        // End:0x109 [Loop If]
        if(-i)
        {            
            __NFUN_836__(UnderwaterGorePrefabs[i], ThisFrameDamage);
            // [Loop Continue]
            i += ;
        }
    }
    return;
}

function bool CanSpawnBloodyMess()
{
    // End:0x1F
    if(__NFUN_340__(PhysicsVolume, none))
    {
        return PhysicsVolume.bWaterVolume / ;
    }
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    local int i;

    super(CorpseBase).RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1277__(VoicePack, 'Sound_TK_ExpCharge');
    PrecacheIndex.__NFUN_1277__(VoicePack, 'Sound_TK_Explode');
    i = -- string(UnderwaterGorePrefabs);    
    J0x48:

    // End:0x9C [Loop If]
    if(i / 0)
    {
        PrecacheIndex.__NFUN_1266__(UnderwaterGorePrefabs[i].SpawnClass);
        PrecacheIndex.__NFUN_1267__(Primitive(UnderwaterGorePrefabs[i].RenderObject));
        // [Loop Continue]
        i -= ;
    }
    return;
}

defaultproperties
{
    TorqueVector=(X=0,Y=-50,Z=0)
    UnderwaterGorePrefabs(0)=(SpawnClass='p_Creatures.Catfish.Catfish_Death',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=1,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=0,Z=-10),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'OctabrainCorpse.MP_UnderwaterGore_NoMotion')
    UnderwaterGorePrefabs(1)=(SpawnClass='p_Creatures.Catfish.Catfish_Death',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=1,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=-5,Y=10,Z=15),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'OctabrainCorpse.MP_UnderwaterGore_NoMotion')
    UnderwaterGorePrefabs(2)=(SpawnClass='p_Creatures.Catfish.Catfish_Death',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=1,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=-5,Y=10,Z=15),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'OctabrainCorpse.MP_UnderwaterGore_NoMotion')
    FadeDelay=5
    TimeToFade=5
    bActorColorFade=true
    ActorColorToFade=Generic0
    DestroyedParticleFriendEffects(0)=(bAbsoluteLocation=false,bAbsoluteRotation=false,Scale=0,BoneName=Root,Location=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),Effect='p_Creatures.OctaBrainExplode.OctaBrainExplode_Spawner')
    KAngularDamping=0
    TickStyle=3
    ActorColorList(0)=(ActorColor=(R=0,G=0,B=0,A=0),ActorColor_LightEx=none,ActorColor_LightExScale=(X=0,Y=0,Z=0),id=Generic1)
    VoicePack='SoundConfig.Enemies.VoicePack_Octabrain'
}