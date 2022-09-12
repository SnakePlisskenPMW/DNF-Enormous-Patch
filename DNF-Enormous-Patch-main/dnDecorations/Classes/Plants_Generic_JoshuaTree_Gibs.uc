/*******************************************************************************
 * Plants_Generic_JoshuaTree_Gibs generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Plants_Generic_JoshuaTree_Gibs extends aFinalDecoration_Gibs
    abstract
    collapsecategories;

defaultproperties
{
    Gibs(0)=(RenderObject='sm_geo_decorations.desert.joshua_tree_gib1',bForcedOnly=false)
    Gibs(1)=(RenderObject='sm_geo_decorations.desert.joshua_tree_gib2',bForcedOnly=false)
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Wood_Solid'
    PhysicsMassType=0
    PhysicsEntityGroup=JoshuaTreeGibs
    PhysicsSoundOverrides(0)=(SoundType=0,OtherMaterialTypes=none,OtherMassTypes=none,Sounds=('a_impact.wood.LogImpact_01','a_impact.wood.LogImpact_02','a_impact.wood.LogImpact_03','a_impact.wood.LogImpact_04'),SoundInfo=(InputRange=(Min=16,Max=500),OutputPitchRange=(Min=0.9,Max=1),OutputVolumeRange=(Min=0.5,Max=1)),bDisableSoundInWater=true)
}