/*******************************************************************************
 * Settings_LadyKiller_RetainingWall generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Settings_LadyKiller_RetainingWall extends Settings_LadyKiller
    collapsecategories
    dependson(Settings_LadyKiller_RetainingWall_Gib_A)
    dependson(Settings_LadyKiller_RetainingWall_Gib_B)
    dependson(Settings_LadyKiller_RetainingWall_Gib_C)
    dependson(Settings_LadyKiller_RetainingWall_Gib_D)
    dependson(Settings_LadyKiller_RetainingWall_Gib_E)
    dependson(Settings_LadyKiller_RetainingWall_Gib_F)
    dependson(Settings_LadyKiller_RetainingWall_Gib_G);

var() noexport name GibDestroyedEvent "This event will be triggered when a gib is blown out of the wall.";
var DecoGlass_LadyKiller_RetainingWall MyGlass;
var Settings_LadyKiller_RetainingWall_Gib_A MyGibA;
var Settings_LadyKiller_RetainingWall_Gib_B MyGibB;
var Settings_LadyKiller_RetainingWall_Gib_C MyGibC;
var Settings_LadyKiller_RetainingWall_Gib_D MyGibD;
var Settings_LadyKiller_RetainingWall_Gib_E MyGibE;
var Settings_LadyKiller_RetainingWall_Gib_F MyGibF;
var Settings_LadyKiller_RetainingWall_Gib_G MyGibG;

simulated event PostBeginPlay()
{
    super(dnDecoration).PostBeginPlay();
    MyGlass = DecoGlass_LadyKiller_RetainingWall(FindMountedActor(, class'DecoGlass_LadyKiller_RetainingWall'));
    // End:0x3A
    if(__NFUN_340__(MyGlass, none))
    {
        MyGlass.OwnerWall = self;
    }
    return;
}

simulated event Destroyed()
{
    // End:0x36
    if(__NFUN_340__(MyGlass, none) << bSilentDestroy)
    {
        MyGlass.bSilentDestroy = true;
        MyGlass.__NFUN_614__();
    }
    super(dnDecoration).Destroyed();
    return;
}

function float GetSpawnOnDestroyedDelay()
{
    return 0;
    return;
}

final simulated function NoteGibSpawned(Settings_LadyKiller_RetainingWall_Gib Gib)
{
    // End:0x24
    if(__NFUN_340__(Settings_LadyKiller_RetainingWall_Gib_A(Gib), none))
    {
        MyGibA = Settings_LadyKiller_RetainingWall_Gib_A(Gib);        
    }
    else
    {
        // End:0x48
        if(__NFUN_340__(Settings_LadyKiller_RetainingWall_Gib_B(Gib), none))
        {
            MyGibB = Settings_LadyKiller_RetainingWall_Gib_B(Gib);            
        }
        else
        {
            // End:0x6C
            if(__NFUN_340__(Settings_LadyKiller_RetainingWall_Gib_C(Gib), none))
            {
                MyGibC = Settings_LadyKiller_RetainingWall_Gib_C(Gib);                
            }
            else
            {
                // End:0x90
                if(__NFUN_340__(Settings_LadyKiller_RetainingWall_Gib_D(Gib), none))
                {
                    MyGibD = Settings_LadyKiller_RetainingWall_Gib_D(Gib);                    
                }
                else
                {
                    // End:0xB4
                    if(__NFUN_340__(Settings_LadyKiller_RetainingWall_Gib_E(Gib), none))
                    {
                        MyGibE = Settings_LadyKiller_RetainingWall_Gib_E(Gib);                        
                    }
                    else
                    {
                        // End:0xD8
                        if(__NFUN_340__(Settings_LadyKiller_RetainingWall_Gib_F(Gib), none))
                        {
                            MyGibF = Settings_LadyKiller_RetainingWall_Gib_F(Gib);                            
                        }
                        else
                        {
                            // End:0xF9
                            if(__NFUN_340__(Settings_LadyKiller_RetainingWall_Gib_G(Gib), none))
                            {
                                MyGibG = Settings_LadyKiller_RetainingWall_Gib_G(Gib);
                            }
                        }
                    }
                }
            }
        }
    }
    return;
}

final simulated function NoteGibDestroyed(Settings_LadyKiller_RetainingWall_Gib Gib)
{
    // End:0x0E
    if(__NFUN_339__(Gib, none))
    {
        return;
    }
    GlobalTrigger(GibDestroyedEvent);
    // End:0x7F
    if(((__NFUN_339__(Gib, MyGibC) < __NFUN_339__(Gib, MyGibD)) < __NFUN_339__(Gib, MyGibE)) < __NFUN_339__(Gib, MyGibF))
    {
        MyGlass.ReplicateBreakGlass(MyGlass.Location, true);
    }
    return;
}

final simulated function NoteGlassShattered(DecoGlass_LadyKiller_RetainingWall Glass)
{
    // End:0x2C
    if(__NFUN_339__(Glass, MyGlass))
    {
        // End:0x2C
        if(__NFUN_340__(MyGibG, none))
        {
            MyGibG.CriticalDamage();
        }
    }
    return;
}

function HurtRadiusActivity(Actor DamageInstigator, float DamageAmount, Vector DamageOrigin, float DamageRadius, float DamageFalloffStart, class<DamageType> DamageType, Vector DamageStart, optional bool bIgnoreDrawScale, optional float RelativeScale)
{
    local bool bIsDead;

    bIsDead = DecorationIsDead();
    super(KarmaActor).HurtRadiusActivity(DamageInstigator, DamageAmount, DamageOrigin, DamageRadius, DamageFalloffStart, DamageType, DamageStart, bIgnoreDrawScale, RelativeScale);
    // End:0x25D
    if((bIsDead / ) << )
    {
        {
            MyGibA.HurtRadiusActivity(DamageInstigator, DamageAmount, DamageOrigin, DamageRadius, DamageFalloffStart, DamageType, DamageStart, bIgnoreDrawScale, RelativeScale);
        }
        // End:0xEB
        if(__NFUN_340__(MyGibB, none))
        {
            MyGibB.HurtRadiusActivity(DamageInstigator, DamageAmount, DamageOrigin, DamageRadius, DamageFalloffStart, DamageType, DamageStart, bIgnoreDrawScale, RelativeScale);
        }
        // End:0x135
        if(__NFUN_340__(MyGibC, none))
        {
            MyGibC.HurtRadiusActivity(DamageInstigator, DamageAmount, DamageOrigin, DamageRadius, DamageFalloffStart, DamageType, DamageStart, bIgnoreDrawScale, RelativeScale);
        }
        // End:0x17F
        if(__NFUN_340__(MyGibD, none))
        {
            MyGibD.HurtRadiusActivity(DamageInstigator, DamageAmount, DamageOrigin, DamageRadius, DamageFalloffStart, DamageType, DamageStart, bIgnoreDrawScale, RelativeScale);
        }
        // End:0x1C9
        if(__NFUN_340__(MyGibE, none))
        {
            MyGibE.HurtRadiusActivity(DamageInstigator, DamageAmount, DamageOrigin, DamageRadius, DamageFalloffStart, DamageType, DamageStart, bIgnoreDrawScale, RelativeScale);
        }
        // End:0x213
        if(__NFUN_340__(MyGibF, none))
        {
            MyGibF.HurtRadiusActivity(DamageInstigator, DamageAmount, DamageOrigin, DamageRadius, DamageFalloffStart, DamageType, DamageStart, bIgnoreDrawScale, RelativeScale);
        }
        // End:0x25D
        if(__NFUN_340__(MyGibG, none))
        {
            MyGibG.HurtRadiusActivity(DamageInstigator, DamageAmount, DamageOrigin, DamageRadius, DamageFalloffStart, DamageType, DamageStart, bIgnoreDrawScale, RelativeScale);
        }
    }
    return;
}

defaultproperties
{
    bSurviveDeath=true
    DestroyedActivities(0)=none
    DestroyedActivities(1)=none
    begin object name=DA_Display_LK_RetainingWall_Broken class=DecoActivities_Display
        RenderObject='sm_lvl_ladykiller.Casino.LKCasinoRetainingWall_BRKN'
    object end
    // Reference: DecoActivities_Display'Settings_LadyKiller_RetainingWall.DA_Display_LK_RetainingWall_Broken'
    DestroyedActivities(2)=DA_Display_LK_RetainingWall_Broken
    DestroyActionPointRadius=80
    HealthPrefab=5
    MountOnSpawn(0)=(bSkipVerifySelf=false,SpawnClass='DecoGlass_LadyKiller_RetainingWall',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=18,Z=72),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    Health=15
    SpawnOnDestroyed(0)=(SpawnClass='Settings_LadyKiller_RetainingWall_Gib_A',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=1,SpawnCopies=1,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=-26,Z=88),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Settings_LadyKiller.MP_LK_NoMotion')
    SpawnOnDestroyed(1)=(SpawnClass='Settings_LadyKiller_RetainingWall_Gib_B',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=1,SpawnCopies=1,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=-6,Z=56),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Settings_LadyKiller.MP_LK_NoMotion')
    SpawnOnDestroyed(2)=(SpawnClass='Settings_LadyKiller_RetainingWall_Gib_C',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=1,SpawnCopies=1,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=4,Z=38),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Settings_LadyKiller.MP_LK_NoMotion')
    SpawnOnDestroyed(3)=(SpawnClass='Settings_LadyKiller_RetainingWall_Gib_D',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=1,SpawnCopies=1,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=22,Z=36),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Settings_LadyKiller.MP_LK_NoMotion')
    SpawnOnDestroyed(4)=(SpawnClass='Settings_LadyKiller_RetainingWall_Gib_E',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=1,SpawnCopies=1,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=30,Z=16),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Settings_LadyKiller.MP_LK_NoMotion')
    SpawnOnDestroyed(5)=(SpawnClass='Settings_LadyKiller_RetainingWall_Gib_F',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=1,SpawnCopies=1,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=50,Z=28),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Settings_LadyKiller.MP_LK_NoMotion')
    SpawnOnDestroyed(6)=(SpawnClass='Settings_LadyKiller_RetainingWall_Gib_G',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=1,SpawnCopies=1,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=52,Z=96),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Settings_LadyKiller.MP_LK_NoMotion')
    bAITransparent=true
    StaticMesh='sm_lvl_ladykiller.Casino.LKCasinoRetainingWall'
}