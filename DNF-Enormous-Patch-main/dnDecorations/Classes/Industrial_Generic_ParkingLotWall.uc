/*******************************************************************************
 * Industrial_Generic_ParkingLotWall generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Industrial_Generic_ParkingLotWall extends Pillars_Destructible
    collapsecategories;

defaultproperties
{
    DestroyedActivities(0)=none
    DestroyedActivities(1)=DecoActivities_Sound'Industrial_Generic_ConcreteBlock_A.DA_Sound_ConcreteBlock_Destroyed'
    begin object name=DA_ParkingLotWall_BRKN class=DecoActivities_Display
        RenderObject='sm_geo_decorations.ParkingLotWall.ParkingLotWall_brkn'
    object end
    // Reference: DecoActivities_Display'Industrial_Generic_ParkingLotWall.DA_ParkingLotWall_BRKN'
    DestroyedActivities(2)=DA_ParkingLotWall_BRKN
    SpawnOnDestroyed(0)=(SpawnClass='Industrial_Generic_ParkingLotWall_Gibs',RenderObject='sm_geo_decorations.ParkingLotWall.ParkingLotWall_gib1',DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=82,Z=30),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Pillars_Destructible.MP_PC_NoMotion')
    SpawnOnDestroyed(1)=(SpawnClass='Industrial_Generic_ParkingLotWall_Gibs',RenderObject='sm_geo_decorations.ParkingLotWall.ParkingLotWall_gib2',DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=44,Z=30),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Pillars_Destructible.MP_PC_NoMotion')
    SpawnOnDestroyed(2)=(SpawnClass='Industrial_Generic_ParkingLotWall_Gibs',RenderObject='sm_geo_decorations.ParkingLotWall.ParkingLotWall_gib3',DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=4,Z=30),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Pillars_Destructible.MP_PC_NoMotion')
    SpawnOnDestroyed(3)=(SpawnClass='Industrial_Generic_ParkingLotWall_Gibs',RenderObject='sm_geo_decorations.ParkingLotWall.ParkingLotWall_gib4',DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=-38,Z=30),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Pillars_Destructible.MP_PC_NoMotion')
    SpawnOnDestroyed(4)=(SpawnClass='Industrial_Generic_ParkingLotWall_Gibs',RenderObject='sm_geo_decorations.ParkingLotWall.ParkingLotWall_gib5',DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=-78,Z=30),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Pillars_Destructible.MP_PC_NoMotion')
    DestroyedParticleFriendEffects(0)=(bAbsoluteLocation=false,bAbsoluteRotation=false,Scale=0,BoneName=None,Location=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),Effect='p_Decorations.Debris_Concrete.Debris_Concrete_Spawner')
    bBlockPath=true
    CollisionHeight=48
    StaticMesh='sm_geo_decorations.ParkingLotWall.ParkingLotWall'
}