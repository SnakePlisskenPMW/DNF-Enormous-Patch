/*******************************************************************************
 * Settings_LadyKiller_RetainingWall_Gib_Physics generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Settings_LadyKiller_RetainingWall_Gib_Physics extends Settings_LadyKiller_RetainingWall_Gib
    abstract
    collapsecategories;

defaultproperties
{
    bSurviveDeath=true
    DestroyedActivities(0)=none
    DestroyedActivities(1)=DecoActivities_Sound'Settings_LadyKiller_RetainingWall_Gib.DA_Sound_LK_RetainingWallGib_Destroyed'
    DestroyedActivities(2)='dnGame.DecoActivityDeclarations.DA_Physics_PHYS_Karma_Set'
    Mass=10
}