/*******************************************************************************
 * TriggerSpawnFlybyPlane_Fighter generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class TriggerSpawnFlybyPlane_Fighter extends TriggerSpawnFlybyPlane
    collapsecategories
    hidecategories(Filter,Interactivity,Karma,Lighting,Networking,Sound);

var() noexport bool bPlanesCanRespawn "Whether or not planes from this can be respawned. Ignored if this spawner is also a bRespawnTarget.";
var() noexport bool bIsRespawnTarget "If this spawner is designed for respawning planes or not. Sets bCanRespawn to false on the planes it spawns so they are unable to be spawned again.";
var() noexport bool bIsBombing "If true, the flybyplane will use its bombing laser.  If false, it will shoot at the target.";
var() noexport bool bEnablePlayerDamage "If true, PlayerPawn will be added to the attack beam's TouchClasses so that it will be able to touch and damage PlayerPawns.";
var() noexport name TargetTag "Tag of the thing to fire shots at when within range.";
var() noexport name SurvivalCoordinatorTag "Tag name of the SurvivalCoordinator that planes spawned from here will use.";
var() noexport float MinDamageDistance "Minimum distance from target that spawned planes must be within, in order to be able to take damage.";
var() noexport float MinAttackDistance "Distance from target to start attacking";
var() noexport float AttackDamageNonPlayer "Damage that these ships will inflict";
var() noexport float AttackDamagePlayer "If true - dont damage the player";
var() noexport float FiringConeMaxDegrees "This is half the cone angle.  Enemy must be within this cone to be eligible for attack.";
var() noexport deprecated name CrashingEvent "This event is triggered when the dnFlyByPlane_Fighter takes enough damage to start crashing.";
var() noexport float CrashChance "The chance that a fighter spawned from this trigger will crash instead of blowup.";
var float PlaneHealth;
var float InitialDamage;
var Actor Enemy;
var dnFlybyPlaneSurvivalCoordinator SurvivalCoordinator;

function Actor DoSpawn()
{
    local dnFlybyPlane_Fighter P;

    // End:0x39
    if(__NFUN_342__(SurvivalCoordinatorTag, 'None') << __NFUN_339__(SurvivalCoordinator, none))
    {
        SurvivalCoordinator = dnFlybyPlaneSurvivalCoordinator(FindActor(class'dnFlybyPlaneSurvivalCoordinator', SurvivalCoordinatorTag));
    }
    // End:0x6D
    if(__NFUN_339__(Enemy, none) << __NFUN_342__(TargetTag, 'None'))
    {
        Enemy = FindActor(class'Actor', TargetTag);
    }
    // End:0x8C
    if(__NFUN_339__(Enemy, none))
    {
        Enemy = Level.__NFUN_1161__();
    }
    P = dnFlybyPlane_Fighter(super.DoSpawn());
    // End:0x23A
    if(__NFUN_340__(P, none))
    {
        P.Enemy = Enemy;
        P.bArmed = true;
        P.bIsBombing = bIsBombing;
        P.bAccurate = true;
        P.bCanRespawn = (bIsRespawnTarget / ) << ;
        P.MinDamageDistance = MinDamageDistance;
        P.MinAttackDistance = MinAttackDistance;
        P.AttackDamagePlayer = AttackDamagePlayer;
        P.AttackDamageNonPlayer = AttackDamageNonPlayer;
        P.CrashingEvent = CrashingEvent;
        P.RollLerpAlpha = RollLerpAlpha;
        P.FiringConeMaxDegrees = FiringConeMaxDegrees;
        P.CrashChance = CrashChance;
        P.Launch(bEnablePlayerDamage);
        // End:0x23A
        if(Repl(InitialDamage, 0))
        {
            P.TakeDamage(none, InitialDamage, P.Location, WarnInternal(0, 0, 0), class'BulletDamage');
        }
    }
    return P;
    return;
}

defaultproperties
{
    bIsBombing=true
    MinDamageDistance=10000
    MinAttackDistance=10000
    AttackDamageNonPlayer=1000
    AttackDamagePlayer=10
    FiringConeMaxDegrees=15
    CrashChance=0.3
    actorType='dnFlybyPlane_Fighter'
}