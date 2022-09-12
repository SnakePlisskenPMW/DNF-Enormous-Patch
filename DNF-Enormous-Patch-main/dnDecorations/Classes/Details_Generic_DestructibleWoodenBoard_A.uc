/*******************************************************************************
 * Details_Generic_DestructibleWoodenBoard_A generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Details_Generic_DestructibleWoodenBoard_A extends Details_Generic
    collapsecategories;

defaultproperties
{
    DestroyedActivities(0)=none
    begin object name=DA_Sound_Board_Destroyed class=DecoActivities_Sound
        SoundNames(0)=Destruct_Wood
    object end
    // Reference: DecoActivities_Sound'Details_Generic_DestructibleWoodenBoard_A.DA_Sound_Board_Destroyed'
    DestroyedActivities(1)=DA_Sound_Board_Destroyed
    HealthPrefab=1
    SpawnOnDestroyed(0)=(SpawnClass='Details_Generic_DestructibleWoodenBoard_A_Gib',RenderObject='sm_class_decorations.Door_boards.Door_Board_A_Gib01',DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=24,Z=0),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    SpawnOnDestroyed(1)=(SpawnClass='Details_Generic_DestructibleWoodenBoard_A_Gib',RenderObject='sm_class_decorations.Door_boards.Door_Board_A_Gib02',DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=-24,Z=0),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    DestroyedParticleFriendEffects(0)=(bAbsoluteLocation=false,bAbsoluteRotation=false,Scale=0,BoneName=None,Location=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),Effect='p_Decorations.Debris_Wood_Small.Debris_Wood_Small_Spawner')
    begin object name=MP_Board_Gibs class=MotionPrefab
        VelocityRelativeType=3
        Velocity=(X=0,Y=0,Z=275)
        VelocityVariance=(X=0,Y=150,Z=100)
        RotationRate=(Pitch=745600,Yaw=0,Roll=657890)
        RotationRateVariance=(Pitch=680000,Yaw=0,Roll=580000)
    object end
    // Reference: MotionPrefab'Details_Generic_DestructibleWoodenBoard_A.MP_Board_Gibs'
    DefaultMotionPrefab=MP_Board_Gibs
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Wood_Solid'
    PhysicsMassType=1
    CollisionRadius=55
    CollisionHeight=6
    Mass=5
    StaticMesh='sm_class_decorations.Door_boards.Door_Board_A'
}