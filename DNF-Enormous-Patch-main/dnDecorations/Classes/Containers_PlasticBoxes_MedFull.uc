/*******************************************************************************
 * Containers_PlasticBoxes_MedFull generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Containers_PlasticBoxes_MedFull extends Containers_PlasticBoxes
    collapsecategories;

defaultproperties
{
    bSurviveDeath=true
    DestroyedActivities(0)=none
    DestroyedActivities(1)='dnGame.DecoActivityDeclarations.DA_Sound_Destroyed_Generic'
    begin object name=DA_Physics_Density_PlasticBoxes_MedFull class=DecoActivities_Physics
        DensitySet=10
    object end
    // Reference: DecoActivities_Physics'Containers_PlasticBoxes_MedFull.DA_Physics_Density_PlasticBoxes_MedFull'
    DestroyedActivities(2)=DA_Physics_Density_PlasticBoxes_MedFull
    begin object name=DA_Display_Containers_PlasticBoxes_Broken class=DecoActivities_Display
        RenderObject='sm_class_decorations.Containers.PlasticContainer1'
    object end
    // Reference: DecoActivities_Display'Containers_PlasticBoxes_MedFull.DA_Display_Containers_PlasticBoxes_Broken'
    DestroyedActivities(3)=DA_Display_Containers_PlasticBoxes_Broken
    HealthPrefab=2
    SpawnOnDestroyed(0)=(SpawnClass='Containers_PlasticBoxes_MedLids',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=0,Z=8),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    PhysicsMassType=2
    CollisionRadius=10
    Mass=25
    StaticMesh='sm_class_decorations.Containers.PlasticContainer1_closed'
    Skins(0)='smt_skins3.Containers.Container1_bs'
    Skins(1)='smt_skins3.Containers.container1lid_bs'
}