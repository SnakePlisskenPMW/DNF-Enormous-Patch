/*******************************************************************************
 * Settings_FoodService_DrinkingGlass generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Settings_FoodService_DrinkingGlass extends Settings_FoodService
    collapsecategories;

enum EGlassColor
{
    GCOLOR_Clear,
    GCOLOR_Red,
    GCOLOR_Blue,
    GCOLOR_Green,
    GCOLOR_Yellow,
    GCOLOR_Random
};

var() noexport Settings_FoodService_DrinkingGlass.EGlassColor GlassColor "Color that this glass will be in game.";

defaultproperties
{
    DestroyedActivities(0)=none
    DestroyedActivities(1)='dnGame.DecoActivityDeclarations.DA_Sound_Destroyed_Generic'
    DestroyedActivities(2)='dnGame.DecoActivityDeclarations.DA_Sound_Destroyed_Glass_Small'
    HealthPrefab=1
    SpawnOnDestroyedSimple(0)='dnParticles.dnDebris_Glass1'
    SpawnOnDestroyedSimple(1)='dnParticles.dnDebris_Glass1'
    bTickOnlyWhenPhysicsAwake=true
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Glass'
    MinDamageVelocity=80
    MaxImpactDamage=10
    FixedPhysicsDamageToNotPlayer=1
    Physics=18
    CollisionRadius=2.8
    CollisionHeight=5
    Mass=10
    StaticMesh='sm_class_decorations.Glasses.DrinkingGlass'
}