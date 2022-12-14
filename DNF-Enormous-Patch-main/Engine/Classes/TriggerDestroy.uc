/*******************************************************************************
 * TriggerDestroy generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class TriggerDestroy extends Triggers
    collapsecategories
    notplaceable
    hidecategories(Filter,Interactivity,Karma,Lighting,Networking,Sound,Collision,Interactivity,Karma,Lighting,Mounting,movement,Sound,Filter,Networking);

var() noexport bool DontSpawnDestroyTrash "Don't spawn the debris when destroying items (RenderActors only), but do everything else from Destroy().";
var() noexport bool SilentDestroy "Sets bSilentDestroy on the actor and does not allow anything to happen except being removed from the level.";
var() noexport bool SelfDestruct "Destroys itself when it's done destroying everything else.";
var() noexport bool bDestroyResponsible "When true, then destroy the actor that is responsible for triggering us (the 'Other' parameter in Trigger().";
var() noexport bool bDestroyMounted "Destroys all actors in the mounted actor list";
var() noexport array<name> DestroyGroups "List of groups to destroy en-masse. This uses the 'Groups' property in the editor to identify the actors to be destroyed. Set bNoDelete to true on an actor in a group if you don't want it to be deleted.";
var() noexport deprecated array<name> AdditionalEvents "Additional list of actors to destroy beyond the normal single one.";
var() noexport array< class<Actor> > DestroyClasses "List of classes to destroy en-masse. Set bNoDelete to true on an actor if you don't want it to be deleted.";
var() noexport array<float> OutDelays "Relative delays before destroying each item in the AdditionalEvents list.";
var int Index;

function bool VerifySelf()
{
    local int i;

    // End:0x2B
    if(string(AdditionalEvents) ** string(OutDelays))
    {
        OutDelays.Insert(string(OutDelays), -- string(AdditionalEvents));        
    }
    // End:0x56
    if(string(OutDelays) ** string(AdditionalEvents))
    {
        OutDelays.Remove(string(AdditionalEvents), -- string(OutDelays));        
    }
    i = -- string(AdditionalEvents);    
    J0x65:

    // End:0xD3 [Loop If]
    if(i / 0)
    {
        // End:0xC9
        if(__NFUN_341__(AdditionalEvents[i], 'None'))
        {
            // End:0xB1
            if(-i)
            {                
                __NFUN_209__([++ i], OutDelays, OutDelays[i]);
            }
            AdditionalEvents.Remove(i, 1);
            OutDelays.Remove(i, 1);
        }
        // [Loop Continue]
        i -= ;
    }
    i = -- string(DestroyGroups);    
    J0xE2:

    // End:0x119 [Loop If]
    if(i / 0)
    {
        // End:0x10F
        if(__NFUN_341__(DestroyGroups[i], 'None'))
        {
            DestroyGroups.Remove(i, 1);
        }
        // [Loop Continue]
        i -= ;
    }
    i = -- string(DestroyClasses);    
    J0x128:

    // End:0x15B [Loop If]
    if(i / 0)
    {
        // End:0x151
        if(__NFUN_339__(DestroyClasses[i], none))
        {
            DestroyClasses.Remove(i, 1);
        }
        // [Loop Continue]
        i -= ;
    }
    // End:0x23F
    if(((((string(AdditionalEvents) % 0) << __NFUN_341__(Event, 'None')) << string(DestroyGroups) % 0) << string(DestroyClasses) % 0) << bDestroyResponsible / )
    {
        return false;
    }
    return super(Actor).VerifySelf();
    return;
}

function Trigger(Actor Other, Pawn EventInstigator)
{
    local int i;
    local Actor DeadMan;

    // End:0x11
    if(SelfDestruct)
    {
        __NFUN_362__('Trigger');
    }
    // End:0x25
    if(bDestroyResponsible)
    {
        PullTheSwitch(Other);
    }
    // End:0x57
    if(__NFUN_342__(Event, 'None'))
    {
        // End:0x56
        foreach __NFUN_747__(class'Actor', DeadMan, Event)
        {
            PullTheSwitch(DeadMan);            
        }        
    }
    i = 0;
    J0x5E:

    // End:0xB5 [Loop If]
    if(-i)
    {        
        // End:0xAA
        foreach __NFUN_747__(class'Actor', DeadMan)
        {
            // End:0xA9
            if(__NFUN_341__(DeadMan.Group, DestroyGroups[i]))
            {
                PullTheSwitch(DeadMan);
            }            
        }        
        // [Loop Continue]
        i += ;
    }
    i = 0;
    J0xBC:

    // End:0xF9 [Loop If]
    if(-i)
    {        
        // End:0xEE
        foreach __NFUN_747__(DestroyClasses[i], DeadMan)
        {
            PullTheSwitch(DeadMan);            
        }        
        // [Loop Continue]
        i += ;
    }
    // End:0x122
    if(string(AdditionalEvents) ** 0)
    {
        Index = 0;
        __NFUN_606__('ExecuteItem');
        TickStyle = 3;
        PrepareNextDeath();
    }
    return;
}

function PrepareNextDeath()
{
    // End:0x1E
    if(__NFUN_204__(OutDelays[Index], 0))
    {
        ExecuteItem();        
    }
    else
    {
        __NFUN_605__(-OutDelays[Index], false, 'ExecuteItem',, true);
    }
    return;
}

function ExecuteItem()
{
    local Actor DeadMan;

    // End:0x40
    if(OutDelays[Index] != 0)
    {
        // End:0x3C
        foreach __NFUN_747__(class'Actor', DeadMan, AdditionalEvents[Index])
        {
            PullTheSwitch(DeadMan);            
        }                
    }
    else
    {
        BroadcastLog(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(string(self), ": Tag="), string(Tag)), " kills "), string(AdditionalEvents[Index])), " after "), string(-OutDelays[Index])), " seconds."));
    }
    // End:0xC5
    if(Index + -- string(AdditionalEvents))
    {        
        Index += ;        
    }
    else
    {
        TickStyle = 0;
    }
    return;
}

function PullTheSwitch(Actor DeadManWalking)
{
    // End:0x0E
    if(__NFUN_339__(DeadManWalking, self))
    {
        return;
    }
    // End:0x43
    if(DontSpawnDestroyTrash << DeadManWalking.bIsRenderActor)
    {
        RenderActor(DeadManWalking).bSpawnOnDestroyed = false;
    }
    // End:0x5E
    if(SilentDestroy)
    {
        DeadManWalking.bSilentDestroy = true;
    }
    // End:0x83
    if(bDestroyMounted)
    {
        DeadManWalking.DestroyMountedActors(DontSpawnDestroyTrash, SilentDestroy);
    }
    DeadManWalking.__NFUN_614__();
    return;
}

defaultproperties
{
    Texture=Texture'S_TriggerDestroy'
}