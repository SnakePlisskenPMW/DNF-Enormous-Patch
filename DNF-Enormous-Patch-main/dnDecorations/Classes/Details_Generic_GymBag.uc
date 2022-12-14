/*******************************************************************************
 * Details_Generic_GymBag generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Details_Generic_GymBag extends Details_Generic
    collapsecategories;

defaultproperties
{
    HealthPrefab=0
    bTickOnlyWhenPhysicsAwake=true
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Carpet'
    PhysicsMassType=1
    PhysicsSoundOverrides(0)=(SoundType=0,OtherMaterialTypes=none,OtherMassTypes=none,Sounds=('a_impact.SpecialCase.GymBag_Impact_01','a_impact.SpecialCase.GymBag_Impact_02','a_impact.SpecialCase.GymBag_Impact_03','a_impact.SpecialCase.GymBag_Impact_04'),SoundInfo=(InputRange=(Min=64,Max=1280),OutputPitchRange=(Min=0.75,Max=1),OutputVolumeRange=(Min=0.4,Max=0.8)),bDisableSoundInWater=true)
    PhysicsSoundOverrides(1)=(SoundType=2,OtherMaterialTypes=none,OtherMassTypes=none,Sounds=('a_impact.SpecialCase.GymBag_Slide_01'),SoundInfo=(InputRange=(Min=400,Max=700),OutputPitchRange=(Min=1,Max=1),OutputVolumeRange=(Min=0.5,Max=0.75)),bDisableSoundInWater=true)
    Physics=18
    CollisionRadius=14
    CollisionHeight=9
    Mass=10
    DrawType=2
    Mesh='c_generic.gymbag'
}