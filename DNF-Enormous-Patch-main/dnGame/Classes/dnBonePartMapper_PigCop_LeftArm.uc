/*******************************************************************************
 * dnBonePartMapper_PigCop_LeftArm generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnBonePartMapper_PigCop_LeftArm extends BonePartMapper
    exportstructs;

defaultproperties
{
    PartMapping(0)=(BoneName=Root,Part=6,BoneNameForDestroy=None)
    PartMapping(1)=(BoneName=shoulder_left,Part=6,BoneNameForDestroy=None)
    PartMapping(2)=(BoneName=arm_left_upper_a,Part=8,BoneNameForDestroy=None)
    PartMapping(3)=(BoneName=arm_left_lower_a,Part=8,BoneNameForDestroy=arm_left_lower_a)
    PartMapping(4)=(BoneName=arm_left_lower_b,Part=8,BoneNameForDestroy=arm_left_lower_a)
    PartMapping(5)=(BoneName=hand_left_a,Part=10,BoneNameForDestroy=arm_left_lower_a)
    PartMapping(6)=(BoneName=finger_index_left_lower,Part=10,BoneNameForDestroy=arm_left_lower_a)
    PartMapping(7)=(BoneName=finger_index_left_upper,Part=10,BoneNameForDestroy=arm_left_lower_a)
    PartMapping(8)=(BoneName=finger_middle_left_lower,Part=10,BoneNameForDestroy=arm_left_lower_a)
    PartMapping(9)=(BoneName=finger_middle_left_upper,Part=10,BoneNameForDestroy=arm_left_lower_a)
    PartMapping(10)=(BoneName=thumb_left_lower,Part=10,BoneNameForDestroy=arm_left_lower_a)
    PartMapping(11)=(BoneName=thumb_left_upper,Part=10,BoneNameForDestroy=arm_left_lower_a)
    DestroyableBones(0)=(BoneName=arm_left_lower_a,bAddToLimbCount=true,LimbCapClass='dnCorpse_LimbCap_Male_ArmLeft_Upper',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=-1,Y=-12,Z=-1),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=16384,Yaw=0,Roll=4096),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    Gibs(0)=(BoneName=arm_left_lower_a,ReqBones=none,RenderObject=none,DrawScale=0,DrawScaleVariance=0,LocOffset=(X=2.279,Y=-14.893,Z=-2.677),RotOffset=(Pitch=13227,Yaw=-16384,Roll=-2941),Mass=15,GibChance=0.5,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    FullyGibbedSoundName=Corpse_LimbExplode
    FullyGibbedFrozenSoundName=IcePart_Shatter_Small
    NumLimbsUntilDestructible=1
}