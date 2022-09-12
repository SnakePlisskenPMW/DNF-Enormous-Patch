/*******************************************************************************
 * dnBonePartMapper_AssaultTrooper generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnBonePartMapper_AssaultTrooper extends BonePartMapper
    exportstructs;

defaultproperties
{
    PartMapping(0)=(BoneName=Head,Part=1,BoneNameForDestroy=neck)
    PartMapping(1)=(BoneName=f_Brow_L,Part=1,BoneNameForDestroy=neck)
    PartMapping(2)=(BoneName=f_Brow_R,Part=1,BoneNameForDestroy=neck)
    PartMapping(3)=(BoneName=head_end,Part=1,BoneNameForDestroy=neck)
    PartMapping(4)=(BoneName=f_cheek_r,Part=1,BoneNameForDestroy=neck)
    PartMapping(5)=(BoneName=f_cheek_l,Part=1,BoneNameForDestroy=neck)
    PartMapping(6)=(BoneName=f_Jaw,Part=1,BoneNameForDestroy=neck)
    PartMapping(7)=(BoneName=neck,Part=2,BoneNameForDestroy=neck)
    PartMapping(8)=(BoneName=spine2,Part=3,BoneNameForDestroy=None)
    PartMapping(9)=(BoneName=Spine1,Part=3,BoneNameForDestroy=None)
    PartMapping(10)=(BoneName=Spine,Part=4,BoneNameForDestroy=None)
    PartMapping(11)=(BoneName=Root,Part=4,BoneNameForDestroy=None)
    PartMapping(12)=(BoneName=LeftShoulder,Part=6,BoneNameForDestroy=LeftArm)
    PartMapping(13)=(BoneName=RightShoulder,Part=7,BoneNameForDestroy=RightArm)
    PartMapping(14)=(BoneName=LeftArm,Part=8,BoneNameForDestroy=LeftArm)
    PartMapping(15)=(BoneName=LeftForeArm,Part=8,BoneNameForDestroy=LeftForeArm)
    PartMapping(16)=(BoneName=LeftForeArmRoll,Part=8,BoneNameForDestroy=LeftForeArm)
    PartMapping(17)=(BoneName=RightArm,Part=9,BoneNameForDestroy=RightArm)
    PartMapping(18)=(BoneName=RightForeArm,Part=9,BoneNameForDestroy=RightForeArm)
    PartMapping(19)=(BoneName=RightForeArmRoll,Part=9,BoneNameForDestroy=RightForeArm)
    PartMapping(20)=(BoneName=righthand,Part=9,BoneNameForDestroy=RightForeArm)
    PartMapping(21)=(BoneName=lefthand,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(22)=(BoneName=LeftHandIndex1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(23)=(BoneName=LeftHandIndex2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(24)=(BoneName=LeftHandIndex3,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(25)=(BoneName=LeftHandPinky1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(26)=(BoneName=LeftHandPinky2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(27)=(BoneName=LeftHandPinky3,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(28)=(BoneName=LeftHandThumb1,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(29)=(BoneName=LeftHandThumb2,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(30)=(BoneName=LeftHandThumb3,Part=10,BoneNameForDestroy=LeftForeArm)
    PartMapping(31)=(BoneName=LeftUpLeg,Part=12,BoneNameForDestroy=LeftUpLeg)
    PartMapping(32)=(BoneName=RightUpLeg,Part=13,BoneNameForDestroy=RightUpLeg)
    PartMapping(33)=(BoneName=LeftLeg,Part=14,BoneNameForDestroy=LeftLeg)
    PartMapping(34)=(BoneName=RightLeg,Part=15,BoneNameForDestroy=RightLeg)
    PartMapping(35)=(BoneName=leftfoot,Part=16,BoneNameForDestroy=LeftLeg)
    PartMapping(36)=(BoneName=LeftToeBase,Part=16,BoneNameForDestroy=LeftLeg)
    PartMapping(37)=(BoneName=rightfoot,Part=17,BoneNameForDestroy=RightLeg)
    PartMapping(38)=(BoneName=RightToeBase,Part=17,BoneNameForDestroy=RightLeg)
    DestroyableBones(0)=(BoneName=neck,bAddToLimbCount=true,LimbCapClass='dnCorpse_LimbCap_Male_Neck',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=7),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_HeadExplode,FrozenExplodeSound=None)
    DestroyableBones(1)=(BoneName=LeftArm,bAddToLimbCount=true,LimbCapClass='dnCorpse_LimbCap_Male_ArmLeft_Upper',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=8.5),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=25000),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    DestroyableBones(2)=(BoneName=LeftForeArm,bAddToLimbCount=false,LimbCapClass='dnCorpse_LimbCap_Male_ArmLeft_Lower',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=-0.5,Y=0,Z=11),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=18000),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    DestroyableBones(3)=(BoneName=RightArm,bAddToLimbCount=true,LimbCapClass='dnCorpse_LimbCap_Male_ArmRight_Upper',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=-8.5),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=32768,Yaw=0,Roll=-25000),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    DestroyableBones(4)=(BoneName=RightForeArm,bAddToLimbCount=false,LimbCapClass='dnCorpse_LimbCap_Male_ArmRight_Lower',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0.5,Y=0,Z=-11),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=32768,Yaw=0,Roll=-18000),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    DestroyableBones(5)=(BoneName=LeftUpLeg,bAddToLimbCount=true,LimbCapClass='dnCorpse_LimbCap_Male_LegLeft_Upper',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=-5,Z=-10),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    DestroyableBones(6)=(BoneName=RightUpLeg,bAddToLimbCount=true,LimbCapClass='dnCorpse_LimbCap_Male_LegRight_Upper',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=5,Z=-10),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    DestroyableBones(7)=(BoneName=LeftLeg,bAddToLimbCount=false,LimbCapClass='dnCorpse_LimbCap_Male_LegLeft_Lower',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=12),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=32768),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    DestroyableBones(8)=(BoneName=RightLeg,bAddToLimbCount=false,LimbCapClass='dnCorpse_LimbCap_Male_LegRight_Lower',LimbCapMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=-12),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),DestroyedEffect=none,FrozenDestroyedEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Small_Spawner',ExplodeSound=Corpse_LimbExplode,FrozenExplodeSound=IcePart_Shatter_Small)
    Gibs(0)=(BoneName=neck,ReqBones=none,RenderObject='sm_class_effects.Assault_Trooper_Gibs.Assault_Trooper_head_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0.384243,Y=0.34964,Z=13.95496),RotOffset=(Pitch=6459,Yaw=-4,Roll=-2),Mass=10,GibChance=1,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(1)=(BoneName=Root,ReqBones=none,RenderObject='sm_class_effects.Assault_Trooper_Gibs.Assault_Trooper_TorsoA_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=7,Y=2.64,Z=1.23),RotOffset=(Pitch=-3144,Yaw=0,Roll=0),Mass=10,GibChance=0.5,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(2)=(BoneName=Root,ReqBones=none,RenderObject='sm_class_effects.Assault_Trooper_Gibs.Assault_Trooper_TorsoB_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=3.35,Y=-2.63,Z=9.64),RotOffset=(Pitch=-3144,Yaw=0,Roll=0),Mass=10,GibChance=1,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(3)=(BoneName=Root,ReqBones=none,RenderObject='sm_class_effects.Assault_Trooper_Gibs.Assault_Trooper_TorsoC_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=-5.65,Y=5.48,Z=23.94),RotOffset=(Pitch=-3144,Yaw=0,Roll=0),Mass=10,GibChance=0.5,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(4)=(BoneName=LeftArm,ReqBones=(LeftForeArm),RenderObject='c_gibs.assaulttrooper_arm_gib_l',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0),Mass=20,GibChance=0.5,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(5)=(BoneName=LeftForeArm,ReqBones=none,RenderObject='sm_class_effects.Assault_Trooper_Gibs.Assault_Trooper_ForearmL_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=-0.907104,Y=1.197329,Z=16.96672),RotOffset=(Pitch=1335,Yaw=17553,Roll=23902),Mass=10,GibChance=0,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(6)=(BoneName=RightArm,ReqBones=(RightForeArm),RenderObject='c_gibs.assaulttrooper_arm_gib_r',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0),Mass=20,GibChance=1,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(7)=(BoneName=RightForeArm,ReqBones=none,RenderObject='sm_class_effects.Assault_Trooper_Gibs.Assault_Trooper_ForearmR_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=-1.459146,Y=-1.135943,Z=-17.26815),RotOffset=(Pitch=-1344,Yaw=-32445,Roll=8857),Mass=10,GibChance=0,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(8)=(BoneName=LeftUpLeg,ReqBones=(LeftLeg),RenderObject='c_gibs.assaulttrooper_leg_gib_l',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0),Mass=30,GibChance=1,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(9)=(BoneName=LeftLeg,ReqBones=none,RenderObject='sm_class_effects.Assault_Trooper_Gibs.Assault_Trooper_FootL_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=-5.459709,Y=-3.403139,Z=14.90217),RotOffset=(Pitch=-1720,Yaw=-29790,Roll=32265),Mass=15,GibChance=0,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(10)=(BoneName=RightUpLeg,ReqBones=(RightLeg),RenderObject='c_gibs.assaulttrooper_leg_gib_r',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0),Mass=30,GibChance=0.5,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(11)=(BoneName=RightLeg,ReqBones=none,RenderObject='sm_class_effects.Assault_Trooper_Gibs.Assault_Trooper_FootR_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=-6.303949,Y=-1.240848,Z=-14.85789),RotOffset=(Pitch=1722,Yaw=31834,Roll=499),Mass=15,GibChance=0,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    GibEffects(0)=(ParticleEffect='p_hit_effects.Blood_BodyExplode.Blood_BodyExplode_Spawner',BoneName=spine2,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0))
    FrozenGibEffects(0)=(ParticleEffect='p_Weapons.FreezeRay_Projectile.FreezeRay_Projectile_Spawner',BoneName=Root,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0))
    FullyGibbedSoundName=Corpse_Explode
    FullyGibbedFrozenSoundName=IceStatue_Destruct
    NumLimbsUntilDestructible=5
}