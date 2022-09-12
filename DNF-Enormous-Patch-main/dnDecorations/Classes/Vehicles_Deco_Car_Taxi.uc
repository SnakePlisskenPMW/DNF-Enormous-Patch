/*******************************************************************************
 * Vehicles_Deco_Car_Taxi generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Vehicles_Deco_Car_Taxi extends Vehicles_Deco_Car_Standard_Base
    collapsecategories;

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super.RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1267__(class'CrownVic_Wheel_Brnt');
    return;
}

defaultproperties
{
    CarColor=5
    VehicleParts(0)=(bDamagePart=false,bCanBlowOff=false,bDestroyOnExplosion=true,VehiclePartID=Window_Front,VehiclePartStyle=0,VehiclePartActor=none)
    VehicleParts(1)=(bDamagePart=false,bCanBlowOff=false,bDestroyOnExplosion=true,VehiclePartID=Window_Rear,VehiclePartStyle=0,VehiclePartActor=none)
    VehicleParts(2)=(bDamagePart=false,bCanBlowOff=true,bDestroyOnExplosion=false,VehiclePartID=Tire_Front_Left,VehiclePartStyle=0,VehiclePartActor=none)
    VehicleParts(3)=(bDamagePart=false,bCanBlowOff=true,bDestroyOnExplosion=false,VehiclePartID=Tire_Front_Right,VehiclePartStyle=0,VehiclePartActor=none)
    VehicleParts(4)=(bDamagePart=false,bCanBlowOff=true,bDestroyOnExplosion=false,VehiclePartID=Tire_Rear_Left,VehiclePartStyle=0,VehiclePartActor=none)
    VehicleParts(5)=(bDamagePart=false,bCanBlowOff=true,bDestroyOnExplosion=false,VehiclePartID=Tire_Rear_Right,VehiclePartStyle=0,VehiclePartActor=none)
    VehicleParts(6)=(bDamagePart=false,bCanBlowOff=true,bDestroyOnExplosion=false,VehiclePartID=Door_Front_Left,VehiclePartStyle=0,VehiclePartActor=none)
    VehicleParts(7)=(bDamagePart=false,bCanBlowOff=true,bDestroyOnExplosion=false,VehiclePartID=Door_Front_Right,VehiclePartStyle=0,VehiclePartActor=none)
    VehicleParts(8)=(bDamagePart=false,bCanBlowOff=true,bDestroyOnExplosion=false,VehiclePartID=Door_Rear_Left,VehiclePartStyle=0,VehiclePartActor=none)
    VehicleParts(9)=(bDamagePart=false,bCanBlowOff=true,bDestroyOnExplosion=false,VehiclePartID=Door_Rear_Right,VehiclePartStyle=0,VehiclePartActor=none)
    VehicleParts(10)=(bDamagePart=false,bCanBlowOff=true,bDestroyOnExplosion=false,VehiclePartID=Hood_Front,VehiclePartStyle=0,VehiclePartActor=none)
    BurntMesh='sm_class_vehicles.TaxiCab.TaxiCab_Brnt_MainBody'
    MountOnSpawn(0)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Standard_Window_Front',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Window_Front,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(1)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Standard_Window_Rear',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Window_Rear,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(2)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Standard_Tire',SpawnChance=0,MountPrefab=(bDontActuallyMount=true,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Tire_Front_Left,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=80,Y=-42,Z=-25),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject='sm_class_vehicles.PoliceCar_A.PoliceCarA_Wheel',DrawScale=0)
    MountOnSpawn(3)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Standard_Tire',SpawnChance=0,MountPrefab=(bDontActuallyMount=true,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Tire_Front_Right,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=80,Y=42,Z=-25),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=32768,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject='sm_class_vehicles.PoliceCar_A.PoliceCarA_Wheel',DrawScale=0)
    MountOnSpawn(4)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Standard_Tire',SpawnChance=0,MountPrefab=(bDontActuallyMount=true,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Tire_Rear_Left,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=-65,Y=-42,Z=-25),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject='sm_class_vehicles.PoliceCar_A.PoliceCarA_Wheel',DrawScale=0)
    MountOnSpawn(5)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Standard_Tire',SpawnChance=0,MountPrefab=(bDontActuallyMount=true,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Tire_Rear_Right,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=-65,Y=42,Z=-25),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=32768,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject='sm_class_vehicles.PoliceCar_A.PoliceCarA_Wheel',DrawScale=0)
    MountOnSpawn(6)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Taxi_Door_Front_Left',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Door_Front_Left,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=18,Y=-39,Z=-2),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(7)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Taxi_Door_Front_Right',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Door_Front_Right,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=18,Y=39,Z=-2),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(8)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Taxi_Door_Rear_Left',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Door_Rear_Left,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=-32,Y=-37,Z=-2),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(9)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Taxi_Door_Rear_Right',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Door_Rear_Right,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=-32,Y=37,Z=-2),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(10)=(bSkipVerifySelf=false,SpawnClass='Vehicles_Deco_Car_Taxi_Hood',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=Hood_Front,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=79,Y=0,Z=1),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    CollisionRadius=0
    CollisionHeight=45
    Mass=2000
    StaticMesh='sm_class_vehicles.TaxiCab.TaxiCab'
}