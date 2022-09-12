/*******************************************************************************
 * Details_Generic_Barricade_Metal_A generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Details_Generic_Barricade_Metal_A extends Details_Generic
    collapsecategories;

simulated event Destroyed()
{
    // End:0x0F
    if(__NFUN_340__(MountParent, none))
    {
        __NFUN_631__();
    }
    super(dnDecoration).Destroyed();
    return;
}

defaultproperties
{
    bSurviveDeath=true
    DestroyedActivities(0)=none
    DestroyedActivities(1)='dnGame.DecoActivityDeclarations.DA_Physics_PHYS_Karma_Set'
    begin object name=DA_KImpulse_Metal_Barricade_Destroyed class=DecoActivities_KarmaImpulse
        ImpulseForce=80000
        ImpulseOffsetVariance=(X=0,Y=10,Z=10)
        ImpulseDirectionVariance=(Pitch=16384,Yaw=16384,Roll=0)
    object end
    // Reference: DecoActivities_KarmaImpulse'Details_Generic_Barricade_Metal_A.DA_KImpulse_Metal_Barricade_Destroyed'
    DestroyedActivities(2)=DA_KImpulse_Metal_Barricade_Destroyed
    DestroyActionPointRadius=30
    HealthPrefab=5
    DamageIgnoreRules(0)=(QualifierInstigatorType='Engine.BaseAI',QualifierNetMode=0,MinDistanceFromLocalPlayer=0,MaxDistanceFromLocalPlayer=250)
    Health=10
    HealthCap=10
    bIgnorePawnAirCushion=true
    bTickOnlyWhenPhysicsAwake=true
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Metal_Solid'
    PhysicsMassType=1
    bAITransparent=true
    bDirectional=true
    Mass=25
    StaticMesh='sm_class_decorations.Barricade.Barricade_Metal_01'
}