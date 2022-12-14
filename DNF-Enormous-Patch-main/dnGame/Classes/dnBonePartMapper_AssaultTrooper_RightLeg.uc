/*******************************************************************************
 * dnBonePartMapper_AssaultTrooper_RightLeg generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnBonePartMapper_AssaultTrooper_RightLeg extends BonePartMapper
    exportstructs;

defaultproperties
{
    PartMapping(0)=(BoneName=RightUpLeg,Part=13,BoneNameForDestroy=None)
    PartMapping(1)=(BoneName=RightLeg,Part=15,BoneNameForDestroy=RightLeg)
    PartMapping(2)=(BoneName=rightfoot,Part=17,BoneNameForDestroy=RightLeg)
    PartMapping(3)=(BoneName=RightToeBase,Part=17,BoneNameForDestroy=RightLeg)
    DestroyableBones(0)=(BoneName=RightLeg,bAddToLimbCount=true,LimbCapClass='dnCorpse_LimbCap_Male_LegRight_Lower',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=-12),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    Gibs(0)=(BoneName=RightLeg,ReqBones=none,RenderObject='sm_class_effects.Assault_Trooper_Gibs.Assault_Trooper_FootR_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=-6.303949,Y=-1.240848,Z=-14.85789),RotOffset=(Pitch=1722,Yaw=31834,Roll=499),Mass=15,GibChance=1,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    FullyGibbedSoundName=Corpse_LimbExplode
    FullyGibbedFrozenSoundName=IcePart_Shatter_Small
    NumLimbsUntilDestructible=1
}