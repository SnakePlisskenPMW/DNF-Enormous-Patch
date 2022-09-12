/*******************************************************************************
 * TriggerZoneDestroy generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class TriggerZoneDestroy extends Triggers
    collapsecategories
    notplaceable
    hidecategories(Filter,Interactivity,Karma,Lighting,Networking,Sound);

var() deprecated name ZoneTag;
var array<ZoneInfo> Zones;

function PostBeginPlay()
{
    local ZoneInfo Z;
    local int i;

    super(Actor).PostBeginPlay();
    // End:0x18
    if(__NFUN_341__(ZoneTag, 'None'))
    {
        return;
    }
    // End:0x4C
    foreach __NFUN_747__(class'ZoneInfo', Z, ZoneTag)
    {
        i = Zones.Add(1);
        Zones[i] = Z;        
    }    
    return;
}

final function bool InRelevantZone(Actor Other)
{
    local int i;

    i = -- string(Zones);    
    J0x0F:

    // End:0x4B [Loop If]
    if(i / 0)
    {
        // End:0x41
        if(__NFUN_339__(Other.Region.Zone, Zones[i]))
        {
            return true;
        }
        // [Loop Continue]
        i -= ;
    }
    return false;
    return;
}

function Trigger(Actor Other, Pawn EventInstigator)
{
    local Actor A;

    // End:0xCE
    foreach __NFUN_747__(class'Actor', A)
    {
        // End:0xCD
        if(((((InRelevantZone(A) << A.__NFUN_358__('Info') / ) << ) << A.bIsPlayerPawn / ) << A.bSilentDestroy = true) << )
        {
        }
    }
    // End:0xE4
    if(InRelevantZone(self))
    {
        bSilentDestroy = true;
        __NFUN_614__();
    }
    return;
}

defaultproperties
{
    Texture=Texture'S_TriggerDestroy'
}