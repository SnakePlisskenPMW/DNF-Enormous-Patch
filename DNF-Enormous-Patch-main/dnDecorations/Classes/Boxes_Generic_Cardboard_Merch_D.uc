/*******************************************************************************
 * Boxes_Generic_Cardboard_Merch_D generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Boxes_Generic_Cardboard_Merch_D extends Boxes_Generic_Cardboard_Merch_A
    collapsecategories;

defaultproperties
{
    DestroyedActivities(0)=none
    DestroyedActivities(1)=DecoActivities_Sound'Boxes_Generic_Cardboard_Merch_A.DA_Sound_Boxes_Cardboard_Brkn'
    begin object name=DA_Display_Boxes_Cardboard_Merch_D_Brkn class=DecoActivities_Display
        RenderObject='sm_FBstadium.Locker_Room.Merch_Box_D_GIB'
    object end
    // Reference: DecoActivities_Display'Boxes_Generic_Cardboard_Merch_D.DA_Display_Boxes_Cardboard_Merch_D_Brkn'
    DestroyedActivities(2)=DA_Display_Boxes_Cardboard_Merch_D_Brkn
    DestroyedActivities(3)='dnGame.DecoActivityDeclarations.DA_Interact_bGrabbable_Disable'
    StaticMesh='sm_FBstadium.Locker_Room.Merch_Box_D'
}