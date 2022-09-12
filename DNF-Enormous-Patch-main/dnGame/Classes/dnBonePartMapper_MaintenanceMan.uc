/*******************************************************************************
 * dnBonePartMapper_MaintenanceMan generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnBonePartMapper_MaintenanceMan extends dnBonePartMapper_Male
    exportstructs;

defaultproperties
{
    Gibs(0)=(BoneName=neck,ReqBones=none,RenderObject='sm_class_effects.Maintence_man_Gibs.Maintenance_man_HeadA_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0.582,Y=-0.031,Z=4.195),RotOffset=(Pitch=3467,Yaw=1,Roll=3),Mass=10,GibChance=1,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(1)=(BoneName=LeftArm,ReqBones=(LeftForeArm),RenderObject='c_gibs.maintenance_man_arm_gib_l',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0),Mass=20,GibChance=1,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(2)=(BoneName=RightArm,ReqBones=(RightForeArm),RenderObject='c_gibs.maintenance_man_arm_gib_r',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0),Mass=20,GibChance=0.5,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(3)=(BoneName=LeftForeArm,ReqBones=none,RenderObject='sm_class_effects.Maintence_man_Gibs.Maintenance_man_ForearmL_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=-0.575,Y=0.591,Z=-8.256),RotOffset=(Pitch=-821,Yaw=16564,Roll=-7939),Mass=10,GibChance=0,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(4)=(BoneName=RightForeArm,ReqBones=none,RenderObject='sm_class_effects.Maintence_man_Gibs.Maintenance_man_ForearmR_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0.488,Y=-0.628,Z=8.289),RotOffset=(Pitch=821,Yaw=-17243,Roll=-24825),Mass=10,GibChance=0,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(5)=(BoneName=LeftUpLeg,ReqBones=(LeftLeg),RenderObject='c_gibs.maintenance_man_leg_gib_l',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0),Mass=30,GibChance=0.5,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(6)=(BoneName=RightUpLeg,ReqBones=(RightLeg),RenderObject='c_gibs.maintenance_man_leg_gib_r',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=0,Y=0,Z=0),RotOffset=(Pitch=0,Yaw=0,Roll=0),Mass=30,GibChance=1,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(7)=(BoneName=LeftLeg,ReqBones=none,RenderObject='sm_class_effects.Maintence_man_Gibs.Maintenance_man_FootL_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=2.585,Y=0.783,Z=-10.256),RotOffset=(Pitch=1212,Yaw=1010,Roll=1212),Mass=15,GibChance=0,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(8)=(BoneName=RightLeg,ReqBones=none,RenderObject='sm_class_effects.Maintence_man_Gibs.Maintenance_man_FootR_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=-2.551,Y=-1.04,Z=10.241),RotOffset=(Pitch=-1212,Yaw=-31761,Roll=-32065),Mass=15,GibChance=0,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
    Gibs(9)=(BoneName=Root,ReqBones=none,RenderObject='sm_class_effects.common_gibs.commonC_Gib',DrawScale=0,DrawScaleVariance=0,LocOffset=(X=1.309,Y=0.314,Z=14.527),RotOffset=(Pitch=8151,Yaw=-15471,Roll=1291),Mass=20,GibChance=0.7,bKDNoPawnInteractions=false,bExplodeOut=false,bNoBloodyMess=false,bIgnorePawnAirCushion=false,bStaticGib=false,GibBloodyMess=none)
}