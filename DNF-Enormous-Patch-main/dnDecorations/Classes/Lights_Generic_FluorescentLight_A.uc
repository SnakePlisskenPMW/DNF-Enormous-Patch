/*******************************************************************************
 * Lights_Generic_FluorescentLight_A generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Lights_Generic_FluorescentLight_A extends Lights_Generic_FluorescentLight
    collapsecategories;

defaultproperties
{
    SupportPoints(0)=(X=0,Y=23,Z=2)
    SupportPoints(1)=(X=0,Y=-23,Z=2)
    DestroyedActivities(0)=none
    DestroyedActivities(1)='dnGame.DecoActivityDeclarations.DA_Sound_Destroyed_Glass_Large'
    DestroyedActivities(2)=DecoActivities_Events'Lights_Generic.DA_Events_Lights_Generic_Destroyed'
    begin object name=DA_Display_Lights_Generic_Flrscnt_A_Brkn class=DecoActivities_Display
        RenderObject='sm_class_lights.Hanging.FluorescentLight_Basic_BRKN'
        Skins(0)=(Index=2,NewMaterialEx=none)
    object end
    // Reference: DecoActivities_Display'Lights_Generic_FluorescentLight_A.DA_Display_Lights_Generic_Flrscnt_A_Brkn'
    DestroyedActivities(3)=DA_Display_Lights_Generic_Flrscnt_A_Brkn
    CollisionHeight=3
    StaticMesh='sm_class_lights.Hanging.FluorescentLight_Basic'
}