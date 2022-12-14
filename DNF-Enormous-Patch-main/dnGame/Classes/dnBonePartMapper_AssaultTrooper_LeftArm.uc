/*******************************************************************************
 * dnBonePartMapper_AssaultTrooper_LeftArm generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnBonePartMapper_AssaultTrooper_LeftArm extends BonePartMapper
    exportstructs;

defaultproperties
{
    PartMapping(0)=(BoneName=LeftShoulder,Part=6,BoneNameForDestroy=None)
    PartMapping(1)=(BoneName=LeftArm,Part=8,BoneNameForDestroy=None)
    PartMapping(2)=(BoneName=LeftForeArm,Part=8,BoneNameForDestroy=LeftForeArm)
    PartMapping(3)=(BoneName=LeftForeArmRoll,Part=8,BoneNameForDestroy=LeftForeArm)
    PartMapping(4)=(BoneName=lefthand,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(5)=(BoneName=LeftHandIndex1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(6)=(BoneName=LeftHandIndex2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(7)=(BoneName=LeftHandIndex3,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(8)=(BoneName=LeftHandPinky1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(9)=(BoneName=LeftHandPinky2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(10)=(BoneName=LeftHandPinky3,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(11)=(BoneName=LeftHandThumb1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(12)=(BoneName=LeftHandThumb2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(13)=(BoneName=LeftHandThumb3,Part=10,BoneNameForDestroy=LeftForeArm)
    DestroyableBones(0)=(BoneName=LeftForeArm,bAddToLimbCount=true,LimbCapClass='dnCorpse_LimbCap_Male_ArmLeft_Lower',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=-0.5,Y=0,Z=11),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=18000),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    Gibs(0)=(BoneName=LeftForeArm,ReqBones=none,RenderObject='sm_class_effects.Assault_Trooper_Gibs.Assault_Trooper_ForearmL_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=-0.907104,Y=1.197329,Z=16.96672),RotOffset=(Pitch=1335,Yaw=17553,Roll=23902),Mass=10,GibChance=1,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    FullyGibbedSoundName=Corpse_LimbExplode
    FullyGibbedFrozenSoundName=IcePart_Shatter_Small
    NumLimbsUntilDestructible=1
}