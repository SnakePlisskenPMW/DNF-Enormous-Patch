/*******************************************************************************
 * Lights_Alien_Hanging generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Lights_Alien_Hanging extends Lights_Alien
    collapsecategories;

simulated function InitializeAnimation()
{
    super(RenderActor).InitializeAnimation();
    AnimationController.SetAnimState('idle');
    return;
}

event TakeDamage(Pawn Instigator, float Damage, Vector DamageOrigin, Vector DamageDirection, class<DamageType> DamageType, optional name HitBoneName, optional Vector DamageStart)
{
    local Vector dmgDir;

    super(dnDecoration).TakeDamage(Instigator, Damage, DamageOrigin, DamageDirection, DamageType, HitBoneName, DamageStart);
    dmgDir = __NFUN_240__(DamageDirection, Rotation);
    dmgDir.Z = 0;
    dmgDir = dmgDir % ;
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super(Lights_Generic).RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1283__('HitGrid', AnimationControllerClass, Mesh);
    PrecacheIndex.__NFUN_1283__('idle', AnimationControllerClass, Mesh);
    return;
}

defaultproperties
{
    HealthPrefab=0
    AnimationControllerClass='acLights_Alien_Hanging'
    bNoNativeTick=false
    bDumbMesh=false
    TickStyle=2
    DrawType=2
    Mesh='c_generic.alienfloorlamp'
}