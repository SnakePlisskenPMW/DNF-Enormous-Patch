/*******************************************************************************
 * LanternPost generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class LanternPost extends aFinalDecoration
    collapsecategories;

var Lights_Generic_Lantern MountedLight;
var Vector LightOffset;
var Vector HangingPointOffset;
var KBSJoint Joint;
var KAngularJointLimit Limit;
var KAngularJointLimit SpinLimit;
var() name LanternLightTag;

simulated function PostVerifySelf()
{
    super(dnDecoration).PostVerifySelf();
    MountedLight = Lights_Generic_Lantern(FindMountedActor(, class'Lights_Generic_Lantern'));
    // End:0x1D5
    if(__NFUN_340__(MountedLight, none))
    {
        MountedLight.__NFUN_645__(Locs(Location, __NFUN_241__(HangingPointOffset, Rotation)));
        MountedLight.TickStyle = 2;
        // End:0x80
        if(__NFUN_342__(LanternLightTag, 'None'))
        {
            MountedLight.FindLights(LanternLightTag);
        }
        Joint = __NFUN_615__(class'KBSJoint', self,, Locs(Location, __NFUN_241__(Locs(HangingPointOffset, WarnInternal(0, 0, 40)), Rotation)),, false, true);
        // End:0xFA
        if(__NFUN_340__(Joint, none))
        {
            Joint.KConstraintActor1 = self;
            Joint.KConstraintActor2 = MountedLight;
            Joint.__NFUN_642__(18);
        }
        Limit = __NFUN_615__(class'KAngularJointLimit', self,, HangingPointOffset, __NFUN_265__(-16384, 0, 0), false, true);
        // End:0x16C
        if(__NFUN_340__(Limit, none))
        {
            Limit.KConstraintActor1 = self;
            Limit.KConstraintActor2 = MountedLight;
            Limit.__NFUN_1106__(8192);
            Limit.__NFUN_642__(18);
        }
        SpinLimit = __NFUN_615__(class'KAngularJointLimit', self,, HangingPointOffset,, false, true);
        // End:0x1D5
        if(__NFUN_340__(Limit, none))
        {
            SpinLimit.KConstraintActor1 = self;
            SpinLimit.KConstraintActor2 = MountedLight;
            SpinLimit.__NFUN_1106__(4096);
            SpinLimit.__NFUN_642__(18);
        }
    }
    return;
}

simulated function Destroyed()
{
    super(dnDecoration).Destroyed();
    // End:0x22
    if(__NFUN_340__(MountedLight, none))
    {
        MountedLight.CriticalDamage();
    }
    FindAndPlaySound('Barrel_Explode');
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super(dnDecoration).RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1277__(VoicePack, 'Barrel_Explode');
    return;
}

defaultproperties
{
    HangingPointOffset=(X=64.9277,Y=-0.571291,Z=32.07854)
    MountOnSpawn(0)=(bSkipVerifySelf=false,SpawnClass='Lights_Generic_Lantern',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    SpawnOnDestroyed(0)=(SpawnClass='Signs_Generic_WoodenSign_Gibs',RenderObject='SM_Lvl_Desert.signs.desert_sign_gib_1',DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=0,Z=0),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'LanternPost.MP_LanternPost_Gibs')
    SpawnOnDestroyed(1)=(SpawnClass='Signs_Generic_WoodenSign_Gibs',RenderObject='SM_Lvl_Desert.signs.desert_sign_gib_1',DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=1.5,Y=4.5,Z=10),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'LanternPost.MP_LanternPost_Gibs')
    SpawnOnDestroyed(2)=(SpawnClass='Signs_Generic_WoodenSign_Gibs',RenderObject='SM_Lvl_Desert.signs.desert_sign_gib_1',DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=2,Y=-5,Z=10),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'LanternPost.MP_LanternPost_Gibs')
    DestroyedParticleFriendEffects(0)=(bAbsoluteLocation=false,bAbsoluteRotation=false,Scale=0,BoneName=None,Location=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),Effect='p_Decorations.Debris_WoodBarricade.Debris_WoodBarricade_Spawner')
    StaticMesh='SM_Lvl_Desert.MIne.lantern_post'
}