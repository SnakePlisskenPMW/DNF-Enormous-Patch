/*******************************************************************************
 * Lights_Generic_Flashlight generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Lights_Generic_Flashlight extends Lights_Generic
    collapsecategories;

event Used(Actor Other, Pawn EventInstigator)
{
    super(dnDecoration).Used(Other, EventInstigator);
    Trigger(Other, EventInstigator);
    return;
}

defaultproperties
{
    DestroyedActivities(0)=none
    DestroyedActivities(1)='dnGame.DecoActivityDeclarations.DA_Sound_Destroyed_Glass_Large'
    DestroyedActivities(2)=DecoActivities_Events'Lights_Generic.DA_Events_Lights_Generic_Destroyed'
    DestroyedActivities(3)='dnGame.DecoActivityDeclarations.DA_Interact_bUsable_Disable'
    bUsable=true
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Plastic'
    Physics=18
    CollisionRadius=8.5
    CollisionHeight=5
    PrePivot=(X=0,Y=0,Z=9)
    DrawScale=0.5
    StaticMesh='sm_class_decorations.flashlight.flashlight'
}