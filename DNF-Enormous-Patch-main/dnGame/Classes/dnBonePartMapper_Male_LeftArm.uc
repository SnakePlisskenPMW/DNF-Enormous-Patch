/*******************************************************************************
 * dnBonePartMapper_Male_LeftArm generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnBonePartMapper_Male_LeftArm extends BonePartMapper
    exportstructs;

defaultproperties
{
    PartMapping(0)=(BoneName=Root,Part=6,BoneNameForDestroy=None)
    PartMapping(1)=(BoneName=LeftShoulder,Part=6,BoneNameForDestroy=None)
    PartMapping(2)=(BoneName=LeftArm,Part=8,BoneNameForDestroy=None)
    PartMapping(3)=(BoneName=leftarmroll,Part=8,BoneNameForDestroy=None)
    PartMapping(4)=(BoneName=leftflex,Part=8,BoneNameForDestroy=None)
    PartMapping(5)=(BoneName=leftunderarm,Part=8,BoneNameForDestroy=None)
    PartMapping(6)=(BoneName=LeftForeArm,Part=8,BoneNameForDestroy=LeftForeArm)
    PartMapping(7)=(BoneName=LeftForeArmRoll,Part=8,BoneNameForDestroy=LeftForeArm)
    PartMapping(8)=(BoneName=lefthand,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(9)=(BoneName=LeftHandThumb1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(10)=(BoneName=LeftHandThumb2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(11)=(BoneName=LeftHandThumb3,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(12)=(BoneName=lefthandthumb4,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(13)=(BoneName=LeftHandIndex1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(14)=(BoneName=LeftHandIndex2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(15)=(BoneName=LeftHandIndex3,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(16)=(BoneName=lefthandindex4,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(17)=(BoneName=lefthandmiddle1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(18)=(BoneName=lefthandmiddle2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(19)=(BoneName=lefthandmiddle3,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(20)=(BoneName=lefthandmiddle4,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(21)=(BoneName=lefthandring1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(22)=(BoneName=lefthandring2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(23)=(BoneName=lefthandring3,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(24)=(BoneName=lefthandring4,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(25)=(BoneName=LeftHandPinky1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(26)=(BoneName=LeftHandPinky2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(27)=(BoneName=LeftHandPinky3,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(28)=(BoneName=lefthandpinky4,Part=10,BoneNameForDestroy=LeftForeArm)
    DestroyableBones(0)=(BoneName=LeftForeArm,bAddToLimbCount=true,LimbCapClass='dnCorpse_LimbCap_Male_ArmLeft_Lower',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0.276,Y=0.124,Z=-10.929),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=670,Yaw=17163,Roll=-12327),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    Gibs(0)=(BoneName=LeftForeArm,ReqBones=none,RenderObject=none,DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0),Mass=0,GibChance=0.5,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    FullyGibbedSoundName=Corpse_LimbExplode
    FullyGibbedFrozenSoundName=IcePart_Shatter_Small
    NumLimbsUntilDestructible=1
}