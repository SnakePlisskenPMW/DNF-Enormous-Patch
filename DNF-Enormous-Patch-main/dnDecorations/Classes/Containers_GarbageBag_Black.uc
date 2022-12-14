/*******************************************************************************
 * Containers_GarbageBag_Black generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Containers_GarbageBag_Black extends Containers_Generic
    collapsecategories;

defaultproperties
{
    DamageThreshold=100
    AIStompedInfo=(StompType=1,ImpulseMag=1,ImpulseRnd=0,Torque=0)
    SpawnOnDestroyedSimple(0)='dnParticles.dnDebris_Fabric1'
    SpawnOnDestroyedSimple(1)='dnParticles.dnDebris_Fabric1'
    SpawnOnDestroyedSimple(2)='dnParticles.dnDebris_Popcorn1'
    SpawnOnDestroyedSimple(3)='dnParticles.dnDebris_Paper1'
    SpawnOnDestroyedSimple(4)='dnParticles.dnDebris_Smoke'
    SpawnOnDestroyed(0)=(SpawnClass='Details_Trash_CrumpledPaper_Ball',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0.5,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=0,Z=0),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    SpawnOnDestroyed(1)=(SpawnClass='Details_Trash_CrumpledPaper_Ball',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0.5,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=0,Z=0),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    SpawnOnDestroyed(2)=(SpawnClass='Details_Trash_CrumpledPaper_Ball',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0.5,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=0,Z=0),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    SpawnOnDestroyed(3)=(SpawnClass='Details_Trash_Styrofoam_Cup',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0.5,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=0,Z=0),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    SpawnOnDestroyed(4)=(SpawnClass='Details_Trash_Styrofoam_Cup',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0.5,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=0,Z=0),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    SpawnOnDestroyed(5)=(SpawnClass='Details_Trash_AluminumFoil',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0.5,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=0,Z=0),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    SpawnOnDestroyed(6)=(SpawnClass='Details_Trash_AluminumFoil',RenderObject=none,DrawScale=0,DrawScaleVariance=0,DrawScale3D=(X=0,Y=0,Z=0),SpawnChance=0.5,SpawnCopies=0,SpawnCopiesVariance=0,bIgnorePawnAirCushion=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bNoCollision=false,bFindSpot=false,bIgnoreParentRotation=false,bTakeParentCollisionSize=false,bTakeParentMounting=false,bTakeParentActorColors=false,bTakeParentSkins=false,Offset=(X=0,Y=0,Z=0),OffsetVariance=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),RotationVariance=(Pitch=0,Yaw=0,Roll=0),BoneName=None,MotionInfo=none)
    DestroyedParticleFriendEffects(0)=(bAbsoluteLocation=false,bAbsoluteRotation=false,Scale=0,BoneName=None,Location=(X=0,Y=0,Z=0),Rotation=(Pitch=0,Yaw=0,Roll=0),Effect='p_Decorations.Debris_Sawhorse.Debris_Sawhorse_Spawner')
    bTickOnlyWhenPhysicsAwake=true
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Body'
    PhysicsMassType=1
    Physics=18
    bAcceptsProjectors=false
    bAcceptsDecalProjectors=false
    CollisionRadius=13
    CollisionHeight=15
    Mass=40
    DrawType=2
    Mesh='c_generic.GarbageBag'
}