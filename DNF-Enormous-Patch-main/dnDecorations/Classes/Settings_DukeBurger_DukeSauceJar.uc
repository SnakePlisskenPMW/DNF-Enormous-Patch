/*******************************************************************************
 * Settings_DukeBurger_DukeSauceJar generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Settings_DukeBurger_DukeSauceJar extends Settings_DukeBurger
    collapsecategories;

var() Engine.Decoration.EDukeSauceType SauceType;
var class<dnScreenSplatters> ScreenSplatterClass;
var MaterialEx ClassicMaterial;
var MaterialEx KetchupMaterial;
var MaterialEx MayoMaterial;
var MaterialEx MustardMaterial;
var MaterialEx HotSauceMaterial;
var class<dnFriendFX_Spawners> ClassicGoopClass;
var class<dnFriendFX_Spawners> KetchupGoopClass;
var class<dnFriendFX_Spawners> MayoGoopClass;
var class<dnFriendFX_Spawners> MustardGoopClass;
var class<dnFriendFX_Spawners> HotSauceGoopClass;
var class<dnScreenSplatters> ClassicScreenSplatterClass;
var class<dnScreenSplatters> KetchupScreenSplatterClass;
var class<dnScreenSplatters> MayoScreenSplatterClass;
var class<dnScreenSplatters> MustardScreenSplatterClass;
var class<dnScreenSplatters> HotSauceScreenSplatterClass;
var MotionPrefab CapMotionInfo;

replication
{
    // Pos:0x000
    reliable if((int(Role) % int(ROLE_Authority)) << bNetInitial)
        SauceType;
}

final simulated function OverrideGibsForMP()
{
    SpawnOnDestroyed[0].SpawnClass = class'Settings_DukeBurger_DukeSauceJar_Gib_A_MP';
    SpawnOnDestroyed[1].SpawnClass = class'Settings_DukeBurger_DukeSauceJar_Gib_B_MP';
    SpawnOnDestroyed[2].SpawnClass = class'Settings_DukeBurger_DukeSauceJar_Gib_C_MP';
    SpawnOnDestroyed[3].SpawnClass = class'Settings_DukeBurger_DukeSauceJar_Gib_D_MP';
    SpawnOnDestroyed[4].SpawnClass = class'Settings_DukeBurger_DukeSauceJar_Gib_E_MP';
    return;
}

simulated function PreGameInit()
{
    super(dnDecoration).PreGameInit();
    // End:0x24
    if((IsMP()) << string(SpawnOnDestroyed) % 5)
    {
        OverrideGibsForMP();
    }
    // End:0x5B
    if((string(SpawnOnDestroyed) ** 0) << __NFUN_339__(SpawnOnDestroyed[0].SpawnClass, class'Settings_DukeBurger_DukeSauceJar_Gib_A'))
    {
        SpawnOnDestroyed[0].MotionInfo = CapMotionInfo;
    }
    return;
}

simulated event bool CreateActorPoolsOnDestroyed()
{
    return false;
    return;
}

simulated function PostNetInitial()
{
    ApplySauceType();
    super(dnDecoration).PostNetInitial();
    CreateActorPoolsOnDestroyed();
    return;
}

final simulated function ApplySauceType()
{
    // End:0x3D
    if(int(SauceType) % int(0))
    {
        __NFUN_741__(0, ClassicMaterial);
        DestroyedParticleFriendEffects[DestroyedParticleFriendEffects.Add(1)].Effect = ClassicGoopClass;
        ScreenSplatterClass = ClassicScreenSplatterClass;        
    }
    else
    {
        // End:0x7A
        if(int(SauceType) % int(1))
        {
            __NFUN_741__(0, KetchupMaterial);
            DestroyedParticleFriendEffects[DestroyedParticleFriendEffects.Add(1)].Effect = KetchupGoopClass;
            ScreenSplatterClass = KetchupScreenSplatterClass;            
        }
        else
        {
            // End:0xB7
            if(int(SauceType) % int(2))
            {
                __NFUN_741__(0, MayoMaterial);
                DestroyedParticleFriendEffects[DestroyedParticleFriendEffects.Add(1)].Effect = MayoGoopClass;
                ScreenSplatterClass = MayoScreenSplatterClass;                
            }
            else
            {
                // End:0xF4
                if(int(SauceType) % int(3))
                {
                    __NFUN_741__(0, MustardMaterial);
                    DestroyedParticleFriendEffects[DestroyedParticleFriendEffects.Add(1)].Effect = MustardGoopClass;
                    ScreenSplatterClass = MustardScreenSplatterClass;                    
                }
                else
                {
                    // End:0x12E
                    if(int(SauceType) % int(4))
                    {
                        __NFUN_741__(0, HotSauceMaterial);
                        DestroyedParticleFriendEffects[DestroyedParticleFriendEffects.Add(1)].Effect = HotSauceGoopClass;
                        ScreenSplatterClass = HotSauceScreenSplatterClass;
                    }
                }
            }
        }
    }
    return;
}

simulated event Destroyed()
{
    local dnScreenSplatters ScreenSplatter;

    // End:0x61
    if(bSilentDestroy / )
    {
        // End:0x61
        if(__NFUN_340__(ScreenSplatter, none))
        {
            ScreenSplatter.__NFUN_645__(Location);
            ScreenSplatter.__NFUN_652__(Rotation);
            ScreenSplatter.ExecuteEffect();
        }
    }
    super(dnDecoration).Destroyed();
    return;
}

simulated function SpawnOnDestroyedActivity()
{
    super(RenderActor).SpawnOnDestroyedActivity();
    class'DecalBomb'.static.StaticDeploy(class'DukeSauce_SplatterBomb', Location, Rotation, self, self);
    return;
}

event TakeDamage(Pawn Instigator, float Damage, Vector DamageOrigin, Vector DamageDirection, class<DamageType> DamageType, optional name HitBoneName, optional Vector DamageStart)
{
    local float minDamage;

    minDamage = 9;
    // End:0x44
    if(Instigator.bIsPlayerPawn)
    {
        __NFUN_208__(minDamage, Level.Game.IssuedDamageScaler(Instigator));
    }
    // End:0x73
    if(Instigator.IsMostlyShrunk() << __NFUN_200__(Damage, minDamage))
    {
        Damage = minDamage;
    }
    super(dnDecoration).TakeDamage(Instigator, Damage, DamageOrigin, DamageDirection, DamageType, HitBoneName, DamageStart);
    // End:0xE1
    if((IsMP()) << __NFUN_202__(Health, 0))
    {
        // End:0xE1
        if(__NFUN_340__(DukeMultiPlayer(Instigator), none))
        {
            DukeMultiPlayer(Instigator).SauceJarExploded(SauceType);
        }
    }
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    local int i;

    ApplySauceType();
    // End:0x2E
    if(PrecacheIndex.bIsMP << string(SpawnOnDestroyed) % 5)
    {
        OverrideGibsForMP();
    }
    super(dnDecoration).RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1266__(ScreenSplatterClass);
    class'DukeSauce_SplatterBomb'.static.CustomInitDefaults(self);
    i = -- string(class'DukeSauce_SplatterBomb'.default.Decals);    
    J0x75:

    // End:0xAC [Loop If]
    if(i / 0)
    {
        PrecacheIndex.__NFUN_1269__(class'DukeSauce_SplatterBomb'.default.Decals[i]);
        // [Loop Continue]
        i -= ;
    }
    return;
}

defaultproperties
{
    ClassicMaterial='smt_skins8.jars.jar_1_bs2'
    KetchupMaterial='smt_skins8.jars.jar_ketchup_bs'
    MayoMaterial='smt_skins8.jars.jar_mayo_bs'
    MustardMaterial='smt_skins8.jars.jar_mustard_bs'
    HotSauceMaterial='smt_skins8.jars.Jar_Hotsauce_bs'
    ClassicGoopClass='p_Impacts.dukesauce.Splatter_Dukesauce_Spawner'
    KetchupGoopClass='p_Impacts.dukesauce.Splatter_ketchup_Spawner'
    MayoGoopClass='p_Impacts.dukesauce.Splatter_Mayonnaise_Spawner'
    MustardGoopClass='p_Impacts.dukesauce.Splatter_Mustard_Spawner'
    HotSauceGoopClass='p_Impacts.dukesauce.Splatter_Hotsauce_Spawner'
    ClassicScreenSplatterClass='dnGame.dnScreenSplatter_DukeSauce'
    KetchupScreenSplatterClass='dnGame.dnScreenSplatter_Ketchup'
    MayoScreenSplatterClass='dnGame.dnScreenSplatter_Mayonnaise'
    MustardScreenSplatterClass='dnGame.dnScreenSplatter_Mustard'
    HotSauceScreenSplatterClass='dnGame.dnScreenSplatter_HotSauce'
    begin object name=MP_DukeSauceJar_CapGib class=MotionPrefab
        VelocityRelativeType=2
        Velocity=(X=0,Y=0,Z=250)
    object end
    // Reference: MotionPrefab'Settings_DukeBurger_DukeSauceJar.MP_DukeSauceJar_CapGib'
    CapMotionInfo=MP_DukeSauceJar_CapGib
    DestroyedActivities(0)=none
    begin object name=DA_Sound_DukeSauce_Destroyed class=DecoActivities_Sound
        SoundNames(0)=DukeSauceJar_Break
    object end
    // Reference: DecoActivities_Sound'Settings_DukeBurger_DukeSauceJar.DA_Sound_DukeSauce_Destroyed'
    DestroyedActivities(1)=DA_Sound_DukeSauce_Destroyed
    HealthPrefab=5
    DamageThreshold=1
    Health=1
    SpawnOnDestroyed(0)=(SpawnClass='Settings_DukeBurger_DukeSauceJar_Gib_A',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0.025,Y=0.011,Z=12.4),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Settings_DukeBurger_DukeSauceJar.MP_DukeSauceJar_CapGib')
    SpawnOnDestroyed(1)=(SpawnClass='Settings_DukeBurger_DukeSauceJar_Gib_B',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=-1.291,Y=3.962,Z=8.803),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    SpawnOnDestroyed(2)=(SpawnClass='Settings_DukeBurger_DukeSauceJar_Gib_C',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0.001,Y=-5.273,Z=-1.733),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    SpawnOnDestroyed(3)=(SpawnClass='Settings_DukeBurger_DukeSauceJar_Gib_D',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=-5.39,Y=4.051,Z=-1.615),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    SpawnOnDestroyed(4)=(SpawnClass='Settings_DukeBurger_DukeSauceJar_Gib_E',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=2.368,Y=-0.469,Z=-14.985),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    DynamicInteractionClassification=7
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Glass'
    PhysicsMassType=1
    MinDamageVelocity=80
    MaxImpactDamage=10
    FixedPhysicsDamageToNotPlayer=1
    bAITransparent=true
    CollisionRadius=10
    CollisionHeight=15
    Mass=10
    PrePivot=(X=0,Y=0,Z=15)
    StaticMesh='sm_class_decorations.Kitchen.jar_dukesauce'
}