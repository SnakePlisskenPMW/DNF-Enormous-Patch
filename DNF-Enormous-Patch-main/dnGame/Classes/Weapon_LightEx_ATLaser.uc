/*******************************************************************************
 * Weapon_LightEx_ATLaser generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Weapon_LightEx_ATLaser extends Weapon_LightEx
    collapsecategories
    hidecategories(Collision,Filter,HeatVision,Interactivity,Karma,KarmaObject,KarmaOverride,Networking,SpawnOnDestroyed);

function FlashOver()
{
    return;
}

defaultproperties
{
    LightStyle=6
    LightRadius=100
    LightIntensity=1
    LightColor=(R=125,G=171,B=227,A=0)
    LightCubeMap='dt_cubemaps.Lights.noisycube_heavy'
    AttenuationMap=none
    Physics=9
}