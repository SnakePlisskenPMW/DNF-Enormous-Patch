/*******************************************************************************
 * Industrial_Generic_CircularGrate generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Industrial_Generic_CircularGrate extends Industrial_Generic
    collapsecategories;

function Destroyed()
{
    super(dnDecoration).Destroyed();
    __NFUN_621__(true, true, true, true, true);
    __NFUN_642__(18);
    return;
}

defaultproperties
{
    bSurviveDeath=true
    DestroyedActivities(0)=none
    begin object name=DA_Sound_Grate_Brkn class=DecoActivities_Sound
        SoundNames(0)=VentGrate_BreakOut
    object end
    // Reference: DecoActivities_Sound'Industrial_Generic_CircularGrate.DA_Sound_Grate_Brkn'
    DestroyedActivities(1)=DA_Sound_Grate_Brkn
    begin object name=DA_Display_Grate_Brkn class=DecoActivities_Display
        RenderObject='sm_class_decorations.Grates.Grate_Round_BRKN'
    object end
    // Reference: DecoActivities_Display'Industrial_Generic_CircularGrate.DA_Display_Grate_Brkn'
    DestroyedActivities(2)=DA_Display_Grate_Brkn
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Metal_Hollow'
    PhysicsMassType=1
    StaticMesh='sm_class_decorations.Grates.Grate_Round'
    VoicePack='SoundConfig.Interactive.VoicePack_Decorations'
}