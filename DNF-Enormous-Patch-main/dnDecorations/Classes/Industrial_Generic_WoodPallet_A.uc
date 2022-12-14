/*******************************************************************************
 * Industrial_Generic_WoodPallet_A generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Industrial_Generic_WoodPallet_A extends Industrial_Generic
    collapsecategories;

defaultproperties
{
    DestroyedActivities(0)=none
    begin object name=DA_Sound_WoodPallet_Destroyed class=DecoActivities_Sound
        SoundNames(0)=Destruct_Wood
    object end
    // Reference: DecoActivities_Sound'Industrial_Generic_WoodPallet_A.DA_Sound_WoodPallet_Destroyed'
    DestroyedActivities(1)=DA_Sound_WoodPallet_Destroyed
    HealthPrefab=5
    Health=40
    HealthCap=40
    SpawnOnDestroyed(0)=(SpawnClass='Industrial_Generic_WoodPallet_A_Gib_A',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0.8,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=22.91331,Y=24.2357,Z=1),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Industrial_Generic_WoodPallet_A.MP_WoodPallet_Gibs')
    SpawnOnDestroyed(1)=(SpawnClass='Industrial_Generic_WoodPallet_A_Gib_B',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=22.91331,Y=-21.7643,Z=1),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Industrial_Generic_WoodPallet_A.MP_WoodPallet_Gibs')
    SpawnOnDestroyed(2)=(SpawnClass='Industrial_Generic_WoodPallet_A_Gib_A',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=-25.08656,Y=-23.76428,Z=1),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=-32768,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Industrial_Generic_WoodPallet_A.MP_WoodPallet_Gibs')
    SpawnOnDestroyed(3)=(SpawnClass='Industrial_Generic_WoodPallet_A_Gib_B',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0.1,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=-25.08681,Y=22.23569,Z=1),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=-32768,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=MotionPrefab'Industrial_Generic_WoodPallet_A.MP_WoodPallet_Gibs')
    DestroyedParticleFriendEffects(0)=(bAbsoluteLocation=false,bAbsoluteRotation=false,Scale=0,BoneName=None,Location=(X=0,Y=0,Z=-13),Rotation=(Pitch=0,Yaw=0,Roll=0),Effect='p_Decorations.Debris_Sawhorse.Debris_Sawhorse_Spawner')
    begin object name=MP_WoodPallet_Gibs class=MotionPrefab
        VelocityRelativeType=3
        Velocity=(X=175,Y=0,Z=100)
        VelocityVariance=(X=150,Y=0,Z=70)
        RotationRate=(Pitch=215600,Yaw=0,Roll=187890)
        RotationRateVariance=(Pitch=180000,Yaw=0,Roll=150000)
    object end
    // Reference: MotionPrefab'Industrial_Generic_WoodPallet_A.MP_WoodPallet_Gibs'
    DefaultMotionPrefab=MP_WoodPallet_Gibs
    bTickOnlyWhenPhysicsAwake=true
    DynamicInteractionClassification=0
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Wood_Solid'
    PhysicsEntityGroup=WoodPallet
    Physics=18
    StaticMesh='sm_class_decorations.Wooden_Pallette1.Pallet'
    VoicePack='SoundConfig.Interactive.VoicePack_Decorations'
}