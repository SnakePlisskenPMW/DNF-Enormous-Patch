/*******************************************************************************
 * dnExplosionLight_RPG generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnExplosionLight_RPG extends dnExplosionLight
    hidecategories(Collision,Filter,HeatVision,Interactivity,Karma,KarmaObject,KarmaOverride,Networking,SpawnOnDestroyed);

defaultproperties
{
    LightRadius=325
    LightIntensity=20.5
    LightColor=(R=188,G=129,B=75,A=0)
    LightCubeMap='dt_cubemaps.Lights.Blast01_Cube'
    AttenuationMap=none
    bCastStencilShadows=false
    bStaticShadows=true
    RemoteRole=0
}