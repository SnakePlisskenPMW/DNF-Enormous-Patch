/*******************************************************************************
 * dnBonePartMapper_Enforcer_RightLeg generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnBonePartMapper_Enforcer_RightLeg extends BonePartMapper
    exportstructs;

defaultproperties
{
    PartMapping(0)=(BoneName=RightUpLeg,Part=13,BoneNameForDestroy=None)
    PartMapping(1)=(BoneName=RightLeg,Part=15,BoneNameForDestroy=RightLeg)
    PartMapping(2)=(BoneName=rightfoot,Part=17,BoneNameForDestroy=RightLeg)
    PartMapping(3)=(BoneName=RightToeBase,Part=17,BoneNameForDestroy=RightLeg)
    PartMapping(4)=(BoneName=RightToeIndex1,Part=17,BoneNameForDestroy=RightLeg)
    PartMapping(5)=(BoneName=RightToeMiddle1,Part=17,BoneNameForDestroy=RightLeg)
    PartMapping(6)=(BoneName=RightToePinky1,Part=17,BoneNameForDestroy=RightLeg)
    DestroyableBones(0)=(BoneName=RightLeg,bAddToLimbCount=true,LimbCapClass='dnCorpse_LimbCap_Enforcer_LegRight_Lower',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=-0.978,Y=-1.226,Z=-22.708),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=449,Yaw=-32018,Roll=3150),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    Gibs(0)=(BoneName=RightLeg,ReqBones=none,RenderObject='sm_class_effects.Enforcer_Gibs.Enforcer_FootR_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=-3.88,Y=-1.45,Z=-13.93),RotOffset=(Pitch=1324,Yaw=32768,Roll=1405),Mass=15,GibChance=0,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    FullyGibbedSoundName=Corpse_LimbExplode
    FullyGibbedFrozenSoundName=IcePart_Shatter_Small
    NumLimbsUntilDestructible=1
}