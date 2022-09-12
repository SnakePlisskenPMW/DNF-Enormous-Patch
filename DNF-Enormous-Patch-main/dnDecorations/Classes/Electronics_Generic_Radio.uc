/*******************************************************************************
 * Electronics_Generic_Radio generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Electronics_Generic_Radio extends Electronics_Generic
    abstract
    collapsecategories;

struct SRadioStationTrigger
{
    var() noexport float Frequency "This will be the frequency we change to when this StationTrigger is triggered.";
    var() noexport name Tag "Trigger this event to trigger this StationTrigger.";
    var int SpecialEventID;
};

var(dnRadio) noexport float StationFrequency "Current frequency.";
var(dnRadio) noexport array<SRadioStationTrigger> StationTriggers "List of triggerable channel changes.";
var(dnRadio) noexport name NextStationTag "Trigger this event to change to the next station.";
var(dnRadio) noexport name PrevStationTag "Trigger this event to change to the prev station.";
var(dnRadio) noexport float PauseStatic "Amount of time to pause between station changes.";
var dnRadio Radio;

event PostBeginPlay()
{
    local int i;

    i = -- string(StationTriggers);    
    J0x0F:

    // End:0x77 [Loop If]
    if(i / 0)
    {
        // End:0x44
        if(__NFUN_341__(StationTriggers[i].Tag, 'None'))
        {
            StationTriggers.Remove(i, 1);
            // [Explicit Continue]
            goto J0x6D;
        }
        StationTriggers[i].SpecialEventID = __NFUN_718__('ChangeChannel', StationTriggers[i].Tag);
        J0x6D:

        // [Loop Continue]
        i -= ;
    }
    super(dnDecoration).PostBeginPlay();
    return;
}

event PostLoadMap()
{
    super(dnDecoration).PostLoadMap();
    Radio = dnRadio(FindMountedActor(, class'dnRadio'));
    // End:0x8D
    if(__NFUN_340__(Radio, none))
    {
        Radio.ChangeChannelTime = PauseStatic;
        Radio.InitializeFrom(self);
        Radio.HandleInitialStation(StationFrequency);
        TickStyle = 0;
        // End:0x8D
        if(__NFUN_206__(Radio.CurrFreq, 0))
        {
            bPoweredOn = true;
        }
    }
    return;
}

function StartSelfOff()
{
    __NFUN_607__(0.1, false, 'TurnOff');
    return;
}

final function ChangeChannel()
{
    // End:0x46
    if(__NFUN_340__(Radio, none))
    {
        Radio.TuneNextStation();
        // End:0x3E
        if(__NFUN_204__(Radio.CurrFreq, 0))
        {
            TurnOff();            
        }
        else
        {
            bPoweredOn = true;
        }
    }
    return;
}

final function TurnOff()
{
    // End:0x1C
    if(__NFUN_340__(Radio, none))
    {
        Radio.super(Electronics_Generic_Radio).TurnOff();
    }
    bPoweredOn = false;
    return;
}

final simulated function TriggerFunc_ChangeChannel()
{
    local Actor Other;
    local Pawn EventInstigator;
    local int SpecialEventID, i;

    // End:0x0E
    if(__NFUN_339__(Radio, none))
    {
        return;
    }
    // End:0x1E
    if(int(DecoState) + int(0))
    {
        return;
    }
    __NFUN_720__(Other, EventInstigator, SpecialEventID);
    i = -- string(StationTriggers);    
    J0x3F:

    // End:0xA0 [Loop If]
    if(i / 0)
    {
        // End:0x96
        if(StationTriggers[i].SpecialEventID % SpecialEventID)
        {
            Radio.CurrFreq = StationTriggers[i].Frequency;
            Radio.HandleNewStation();
            return;
        }
        // [Loop Continue]
        i -= ;
    }
    return;
}

event Trigger(Actor Other, Pawn EventInstigator)
{
    super(dnDecoration).Trigger(Other, EventInstigator);
    // End:0x20
    if(int(DecoState) + int(0))
    {
        return;
    }
    ChangeChannel();
    return;
}

function ForcePowerOff()
{
    TurnOff();
    super.ForcePowerOff();
    return;
}

function ForcePowerOn()
{
    // End:0x2D
    if(__NFUN_340__(Radio, none) << __NFUN_204__(Radio.CurrFreq, 0))
    {
        ChangeChannel();
    }
    super.ForcePowerOn();
    return;
}

defaultproperties
{
    PauseStatic=0.4
    DecoActivities_Default(0)=(ActivityData=(bInitialized=false,CurrentIndex=0,NextPerformTime=0,NextPerformTime_Failure=0),ActivityIDScript=none,ActivityID=(3),ActivityMethod=0,ActivityStates_Success=none,ActivityStates_Failure=(1),ActivityDebugID="",Activities=((ActivityRules=none,ActivityElements=(DecoActivities_Events'Electronics_Generic_Radio.DA_Events_Electronics_Generic_Radio_Used','dnGame.DecoActivityDeclarations.DA_Sound_SmallSwitch_Standard'),ActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0),FailureActivityElements=none,FailureActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0))),bDisabled=false)
    DestroyedActivities(0)=none
    DestroyedActivities(1)='dnGame.DecoActivityDeclarations.DA_Sound_Destroyed_Glass_Small'
    DestroyedActivities(2)='dnGame.DecoActivityDeclarations.DA_HUD_bForceUsePhrase_Disable'
    bForceUsePhrase=true
    bUsable=true
    bTickOnlyWhenPhysicsAwake=true
    bAcceptsDecalProjectors=false
    SoundScaled=false
    Mass=10
    TickStyle=2
    AmbientMusicVolume=0.6
    AmbientMusicInnerRadius=256
    AmbientMusicRadius=512
    AmbientMusicCrossfadeTime=0
}