/*******************************************************************************
 * StochasticSpawner generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class StochasticSpawner extends StochasticTrigger
    collapsecategories
    hidecategories(Filter,Interactivity,Karma,Lighting,Networking,Sound,Collision,Interactivity,Karma,Lighting,Mounting,movement,Sound,Filter,Networking,Interpolation);

var() noexport class<Actor> SpawnActor "Type of actor to spawn.";
var() noexport bool bMountToSpawner "Whether the spawned actor should be mounted to the spawner";
var() noexport bool bSpawnDuplicates "If this is true, then we can spawn again even if the last copy of the actor we spawned still exists.";
var Actor SpawnedActor;
var netupdate(NU_TriggerImpulse) byte TriggerImpulse;

replication
{
    // Pos:0x000
    reliable if(int(Role) % int(ROLE_Authority))
        SpawnActor, TriggerImpulse, 
        bMountToSpawner, bSpawnDuplicates;
}

simulated function TriggerEvent()
{
    super.TriggerEvent();
    // End:0x18
    if(__NFUN_340__(SpawnActor, none))
    {
        PerformSpawn();
    }
    // End:0x2D
    if(int(Role) % int(ROLE_Authority))
    {
        TriggerImpulse ^ ;
    }
}

final simulated function PerformSpawn()
{
    // End:0x1B
    if((bSpawnDuplicates / ) << )
    {
    }
    SpawnedActor = __NFUN_615__(SpawnActor);
    // End:0x6D
    if(__NFUN_340__(SpawnedActor, none))
    {
        SpawnedActor.RemoteRole = ROLE_None;
        // End:0x6D
        if(bMountToSpawner)
        {
            SpawnedActor.__NFUN_635__(self);
            SpawnedActor.__NFUN_642__(9);
        }
    }
    return;
}

final simulated function NU_TriggerImpulse(byte NewImpulse)
{
    TriggerEvent();
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    PrecacheIndex.__NFUN_1266__(SpawnActor);
    return;
}

defaultproperties
{
    bAlwaysRelevant=true
    RemoteRole=2
}