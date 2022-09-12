/*******************************************************************************
 * dnFlybyPlane_Fighter_Lesser_Gibs generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnFlybyPlane_Fighter_Lesser_Gibs extends dnDecoration_Gibs
    collapsecategories;

defaultproperties
{
    Gibs(0)=(RenderObject='sm_class_vehicles.Aircraft.AlienDroneShip_GIB2',bForcedOnly=false)
    Gibs(1)=(RenderObject='sm_class_vehicles.Aircraft.AlienDroneShip_GIB4',bForcedOnly=false)
    Gibs(2)=(RenderObject='sm_class_vehicles.Aircraft.AlienDroneShip_GIB9',bForcedOnly=false)
    Gibs(3)=(RenderObject='sm_class_vehicles.Aircraft.AlienDroneShip_GIB10',bForcedOnly=false)
    CollisionChance=0.5
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Metal_Hollow'
    PhysicsMassType=1
    GravityScale=0.76
    Density=5
    bBlockActors=false
    bStepUpAble=false
    Mass=10
    LifeSpan=2
    LifeSpanVariance=1.5
    VoicePack='SoundConfig.Vehicles.VoicePack_AlienFighter'
}