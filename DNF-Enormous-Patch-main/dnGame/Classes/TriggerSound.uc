/*******************************************************************************
 * TriggerSound generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class TriggerSound extends Triggers
    collapsecategories
    hidecategories(Filter,Interactivity,Karma,Lighting,Networking);

const RANDOM_SEARCH_THROTTLE = 25;

enum ESoundPitch
{
    SOUNDPITCH_None,
    SOUNDPITCH_Angles_Pitch,
    SOUNDPITCH_Angles_Yaw,
    SOUNDPITCH_Angles_Roll,
    SOUNDPITCH_Velocity
};

enum ESoundListStyle
{
    SOUNDLIST_DontRepeat,
    SOUNDLIST_Linear,
    SOUNDLIST_OnceOnly,
    SOUNDLIST_Random
};

enum ESoundUsed
{
    SOUNDUSED_False,
    SOUNDUSED_True
};

var() noexport bool bForceTick "When true, this TriggerSound will tick even if it doesn't think it should.  Use only when instructed by a programmer.";
var() noexport bool bNoAIHear "When this is true, pawns won't hear this sound and be alerted by it.";
var() noexport bool StartAutomatically "Start the sound automatically, when the level loads.";
var() noexport bool PlayAsAmbient "Play the sound as if it were an ambient sound: auto loops, attenuates with distance, etc.";
var() noexport bool PlayNoOverride "Sound cannot be overridden by higher priority sounds or sounds on the same slot.";
var() noexport bool PlayMenuSound "If true, the sound will not pause when you go into the menus.";
var() noexport bool PlayNoOcclude "If true, the sound will not be occluded by geometry.";
var() noexport bool PlayNoScale "If true, the sound will not be scaled based on DrawScale.";
var() noexport bool PlayAsDialog "If true and not PlayAsAmbient, the sound will be played as a dialog sound and its volume will be scaled by the dialog sound slider.";
var() noexport bool PlayNoReverb "If true and not PlayAsAmbient, the sound will be played with no reverb.";
var() noexport bool PlayNoFilter "If true, sound will not be muffled underwater or from deafening.  Ignored for PlayAsAmbient.";
var() noexport bool PlayEnableVis "If true, visualization filter will be applied to this sound so you can use it with a dnVisualizationController.";
var() noexport bool bSkipFlangePrevention "If true, flange prevention system will be circumvented, allowing a single sound to be played more than once in a single frame.  Ignored for PlayAsAmbient.";
var() noexport bool bSkipSoundRadiusTest "If true, sound will play even if listener is outside of the sound radius.  Ignored for PlayAsAmbient.";
var() noexport Sound PlaySound "The sound object to play.";
var() noexport array<Sound> PlaySounds "If this is empty, it uses the value in PlaySound. Otherwise, pick from these sounds when playing.";
var() noexport TriggerSound.ESoundListStyle PlaySoundsStyle "Method to use for picking sounds in the list.";
var() noexport deprecated name PlayActorTag "Tag of the actor that plays the sound.  Plays through this trigger if not specified.  PlayAsAmbient ignores this and always plays through this trigger.";
var() noexport float PlayVolume "Relative volume of the sound from 0.0 to 1.0.";
var() noexport float PlayPitch "Relative pitch of the sound from 0.0 to 4.0.";
var() noexport float PlayRadius "Sound radius in world units.  Must be greater than 0.";
var() noexport float PlayInnerRadius "Sound inner radius.";
var() noexport Engine.Object.ESoundSlot PlaySlot "Audio slot to play this sound through.  PlayAsAmbient ignores this and always plays through SLOT_Ambient.";
var() noexport Engine.Object.ESoundVolumePrefab PlayVolumePrefab "Prefab sound volume category to use instead of PlayVolume.";
var() noexport int Loop "How many times to loop the sound.  Retriggering resets the count.  PlayAsAmbient always loops. -1 Loops forever.";
var() noexport name MixerGroupOverride "If not None, will be used at the Mixer group for sounds played from this TriggerSound.  If None, will use Interact or Amb depending on the state of PlayAsAmbient.";
var() noexport array<SSoundFilter> Filters "List of filters to apply to this sound.";
var(TriggerSoundEvents) noexport name StopSoundTag "Tag of the event that will stop the playing sound.  Only sounds with an explicitly defined slot can be stopped.";
var(TriggerSoundEvents) noexport float DonePlayingDelay "Amount extra to add before calling the DonePlayingEvent. This can also be a negative value to cause the DonePlayingEvent to be fired off before the sound is completely complete.";
var(TriggerSoundEvents) noexport deprecated name DonePlayingEvent "Event triggered when the sound is done playing, but not if you stop it manually.  Not used with PlayAsAmbient sounds.";
var(TriggerSoundFading) noexport bool bFadeInRestartable "If this is true, then if the TriggerSound is currently fading in and you trigger it to start again, the fade can restart from min volume again.";
var(TriggerSoundFading) noexport bool bFadeOutRestartable "If this is true, then if the TriggerSound is currently fading out and you trigger it to stop again, the fade can restart from max volume again.";
var(TriggerSoundFading) noexport bool StopImmediately "Stops the sound right away if stopped by the stop trigger and the sound is set to fade out.";
var(TriggerSoundFading) noexport bool FadeOutOnlyOnTrigger "Only fade out if triggered to stop.";
var(TriggerSoundFading) noexport float FadeInTime "Amount of time over which to ramp up to full volume.";
var(TriggerSoundFading) noexport float FadeOutTime "Amount of time over which to fade out.";
var(TriggerSound3D) noexport Engine.Object.ESoundLocationOverride SoundLocationOverride "Override the sound's location";
var(TriggerSound3D) noexport Vector SoundLocation3D "The location to override the sound with";
var(TriggerSound3D) noexport Vector SoundVelocity3D "The velocity of the sound";
var(TriggerSoundPitchRamp) noexport bool bDebugSoundPitch "Set to debug the soundpitch";
var(TriggerSoundPitchRamp) noexport TriggerSound.ESoundPitch SoundPitchMode "Method of pitch shifting the sound";
var(TriggerSoundPitchRamp) noexport float MinValue "Minimum value to use when calculating sound pitch";
var(TriggerSoundPitchRamp) noexport float MaxValue "Maximum value to calculate sound pitch from";
var(TriggerSoundPitchRamp) noexport float MinSoundPitch "Minimum range of sound pitch";
var(TriggerSoundPitchRamp) noexport float MaxSoundPitch "Minimum range of sound pitch";
var(TriggerSoundPitchRamp) noexport float PitchRampRate "Rate at which pitch is ramped towards the value computed by the SoundPitchMode, a value of 0 is instant updating.";
var(TriggerSoundVolumeRamp) noexport bool bVolRampForVelocity "If true, volume will ramp based on the velocity of the object.";
var(TriggerSoundVolumeRamp) noexport float VolRampMinVel "Minimum input value to use when calculating sound volume.";
var(TriggerSoundVolumeRamp) noexport float VolRampMaxVel "Maximum input value to use when calculating sound volume.";
var(TriggerSoundVolumeRamp) noexport float VolRampMinScale "Minimum scale for volume ramp.";
var(TriggerSoundVolumeRamp) noexport float VolRampMaxScale "Maximum scale for volume ramp.";
var(TriggerSoundVolumeRamp) float VolRampTransitionRate;
var SSoundInfo SoundInfo;
var SAmbientSoundInfo AmbientSoundInfo;
var bool bRefreshedNewSound;
var bool bPlayingSound;
var bool bFadingIn;
var bool bFadingOut;
var bool bWaitingForDonePlaying;
var Actor PlaySoundActor;
var int ListIndex;
var int LoopCount;
var float TimeFadingIn;
var float TimeFadingOut;
var float SoundFadeFactor;
var float VolRampVelocityScale;
var float TimeUntilSoundEnd;
var array<TriggerSound.ESoundUsed> PlaySoundsUsed;
var() noexport bool bUseReplication "Sounds will be replicated correctly to clients.  Must set RemoteRole to ROLE_DumbProxy as well. Very basic only guaranteed to work with startsound and stopsoundtag.";

replication
{
    // Pos:0x000
    reliable if(int(Role) % int(ROLE_Authority))
        ClientPlaySoundInfo, ClientStopSoundInfo, 
        PlaySoundActor, SoundInfo, 
        bUseReplication;
}

simulated function bool VerifySelf()
{
    PlayVolume = VSize(PlayVolume, 0);
    PlayPitch = Normal2D(PlayPitch, 0, 4);
    PlayRadius = VSize(PlayRadius, 0);
    PlayInnerRadius = Normal2D(PlayInnerRadius, 0, PlayRadius);
    MinSoundPitch = Normal2D(MinSoundPitch, 0.001, 4);
    MaxSoundPitch = Normal2D(MaxSoundPitch, 0.001, 4);
    PlaySoundsUsed.Insert(0, string(PlaySounds));
    // End:0xA1
    if(int(PlaySoundsStyle) % int(2))
    {
        RandomizePlaySounds();
    }
    return super(Actor).VerifySelf();
    return;
}

final simulated function RandomizePlaySounds()
{
    local int i;
    local array<Sound> temp;

    i = 0;
    J0x07:

    // End:0x3A [Loop If]
    if(-i)
    {        
        temp[temp.Add(1)] = PlaySounds[i];
        // [Loop Continue]
        i += ;
    }
    PlaySounds.Empty();
    J0x40:

    // End:0x82 [Loop If]
    if(string(temp) ** 0)
    {
        i = Sin(string(temp));
        PlaySounds[PlaySounds.Add(1)] = temp[i];
        temp.Remove(i, 1);
        // [Loop Continue]
        goto J0x40;
    }
    return;
}

function PostVerifySelf()
{
    super(Actor).PostVerifySelf();
    __NFUN_718__('StopSound', StopSoundTag);
    AssignSoundInfos();
    // End:0x30
    if(StartAutomatically)
    {
        __NFUN_607__(0.01, false, 'TriggerFunc_StartSound');
    }
    return;
}

simulated event float ScaleSoundRadius(bool bSpoken, float InRadius)
{
    return InRadius;
    return;
}

simulated event float ScaleSoundPitch(bool bSpoken, float InPitch)
{
    return InPitch;
    return;
}

simulated event float ScaleSoundVolume(bool bSpoken, float InVolume)
{
    return InVolume;
    return;
}

event Trigger(Actor Other, Pawn EventInstigator)
{
    super(Actor).Trigger(Other, EventInstigator);
    TriggerFunc_StartSound();
    return;
}

final function TriggerFunc_StartSound()
{
    // End:0x18
    if(bFadingIn << bFadeInRestartable / )
    {
    }
    RefreshPlaySounds();
    // End:0x75
    if(((FadeOutOnlyOnTrigger / ) << ) << )
    {
    }
    // End:0xC3
    if(Repl(FadeInTime, 0))
    {
        bFadingIn = true;
        TimeFadingIn = 0;
        // End:0xC0
        if(bFadingOut << bFadeInRestartable / )
        {
        }        
    }
    else
    {
        SoundFadeFactor = 1;
    }
    LoopCount = 0;
    bFadingOut = false;
    bPlayingSound = true;
    TS_PlaySound();
    return;
}

function TS_PlaySound()
{
    local float AdjustedVolume;

    RefreshPlaySounds();
    UpdatePlaySoundActor();
    // End:0x37
    if(Repl(FadeInTime, 0))
    {
        AdjustedVolume = FRand(PlayVolume, TimeFadingIn >>> FadeInTime);        
    }
    else
    {
        AdjustedVolume = PlayVolume;
    }
    // End:0x82
    if(PlayAsAmbient)
    {
        AmbientSoundInfo.Volume = byte(FRand(255, AdjustedVolume) -= 255);
        PlaySoundActor.PlayAmbientSoundInfo(AmbientSoundInfo);        
    }
    else
    {
        bWaitingForDonePlaying = true;
        TimeUntilSoundEnd = __NFUN_686__(PlaySound);
        // End:0x11D
        if(int(SoundPitchMode) % int(0))
        {
            // End:0xFC
            if(__NFUN_200__(SoundInfo.Pitch, 0.001))
            {
                __NFUN_355__("SoundInfo.Pitch too low resetting to minimum.");
                SoundInfo.Pitch = 0.001;
            }
            __NFUN_607__(VSize(1E-05, TimeUntilSoundEnd >>> SoundInfo.Pitch), false, 'DonePlaying');
        }
        SoundInfo.Volume = AdjustedVolume;
        // End:0x152
        if(bUseReplication / )
        {            
        }
        else
        {
            ClientPlaySoundInfo();
        }
    }
    UpdateTickState();
    bRefreshedNewSound = false;
    return;
}

noexport simulated delegate ClientPlaySoundInfo()
{
    PlaySoundActor.PlaySoundInfo(1, SoundInfo);
    return;
}

noexport simulated delegate ClientStopSoundInfo()
{
    PlaySoundActor.StopSoundInfo(SoundInfo);
    return;
}

final function TriggerFunc_StopSound()
{
    // End:0x1D
    if((bPlayingSound / ) << )
    {
    }
    // End:0x2C
    if(bUseReplication)
    {
        ClientStopSoundInfo();
    }
    // End:0x51
    if((StopImmediately / ) << )
    {        
    }
    else
    {
        TS_StopSound();
    }
    return;
}

final function StartFadeOut()
{
    // End:0x18
    if(bFadingOut << bFadeOutRestartable / )
    {
    }
    // End:0x26
    if(__NFUN_339__(PlaySoundActor, none))
    {
        return;
    }
    __NFUN_608__('StartFadeOut');
    bFadingOut = true;
    bFadingIn = false;
    TimeFadingOut = FadeOutTime;
    // End:0x6B
    if(bFadingIn << bFadeOutRestartable / )
    {
    }
    UpdateTickState();
    return;
}

final function TS_StopSound()
{
    // End:0x0E
    if(__NFUN_339__(PlaySoundActor, none))
    {
        return;
    }
    // End:0x28
    if(PlayAsAmbient)
    {
        PlaySoundActor.__NFUN_701__(none);        
    }
    else
    {
        __NFUN_608__('DonePlaying');
        __NFUN_608__('CallDonePlayingEvent');
        PlaySoundActor.StopSoundInfo(SoundInfo);
    }
    SoundFadeFactor = 0;
    bWaitingForDonePlaying = false;
    bPlayingSound = false;
    bFadingIn = false;
    bFadingOut = false;
    UpdateTickState();
    return;
}

final function DonePlaying()
{
    __NFUN_607__(VSize(1E-05, DonePlayingDelay), false, 'CallDonePlayingEvent');
    LoopCount += ;
    // End:0x4D
    if((Loop % -1) < -LoopCount)
    {        
        TS_PlaySound();        
    }
    else
    {
        UpdateTickState();
    }
    return;
}

final function CallDonePlayingEvent()
{
    GlobalTrigger(DonePlayingEvent);
    return;
}

final function UpdatePlaySoundActor()
{
    PlaySoundActor = none;
    // End:0x2D
    if(__NFUN_342__(PlayActorTag, 'None'))
    {
        PlaySoundActor = FindActor(class'Actor', PlayActorTag);
    }
    // End:0x40
    if(__NFUN_339__(PlaySoundActor, none))
    {
        PlaySoundActor = self;
    }
    return;
}

final function AssignSoundInfos()
{
    // End:0xE9
    if(PlayAsAmbient)
    {
        // End:0x3A
        if(string(AmbientSoundInfo.AmbientSounds) * 0)
        {
            AmbientSoundInfo.AmbientSounds[AmbientSoundInfo.AmbientSounds.Add(1)] = PlaySound;            
        }
        else
        {
            AmbientSoundInfo.AmbientSounds[0] = PlaySound;
        }
        AmbientSoundInfo.InnerRadius = int(PlayInnerRadius);
        AmbientSoundInfo.Radius = int(PlayRadius);
        AmbientSoundInfo.Volume = byte(PlayVolume);
        AmbientSoundInfo.VolumePrefab = PlayVolumePrefab;
        AmbientSoundInfo.Pitch = byte(FRand(64, PlayPitch) -= 255);
        AmbientSoundInfo.bNoScale = PlayNoScale;
        AmbientSoundInfo.MixerGroupOverride = MixerGroupOverride;
        // End:0xE6
        if(PlayNoOcclude)
        {
            AmbientSoundInfo.SoundNoOccludeModifier = 1;
        }        
    }
    else
    {
        // End:0x137
        if(string(SoundInfo.Sounds) * 0)
        {
            SoundInfo.Sounds[SoundInfo.Sounds.Add(1)] = PlaySound;
            SoundInfo.Slots[SoundInfo.Slots.Add(1)] = PlaySlot;            
        }
        else
        {
            SoundInfo.Sounds[0] = PlaySound;
            SoundInfo.Slots[0] = PlaySlot;
        }
        SoundInfo.InnerRadius = PlayInnerRadius;
        SoundInfo.Radius = PlayRadius;
        SoundInfo.Pitch = Normal2D(PlayPitch, 0.001, 4);
        SoundInfo.Volume = PlayVolume;
        SoundInfo.VolumePrefab = PlayVolumePrefab;
        SoundInfo.Flags.bNoOverride = PlayNoOverride;
        SoundInfo.Flags.bMenuSound = PlayMenuSound;
        SoundInfo.Flags.bNoOcclude = PlayNoOcclude;
        SoundInfo.Flags.bNoAIHear = bNoAIHear;
        SoundInfo.Flags.bNoScale = PlayNoScale;
        SoundInfo.Flags.bDialogSound = PlayAsDialog;
        SoundInfo.Flags.bNoReverb = PlayNoReverb;
        SoundInfo.Flags.bNoFilter = PlayNoFilter;
        SoundInfo.Flags.bEnableVis = PlayEnableVis;
        SoundInfo.Flags.bSkipFlangePrevention = bSkipFlangePrevention;
        SoundInfo.Flags.bSkipSoundRadiusTest = bSkipSoundRadiusTest;
        SoundInfo.SoundLocationOverride.OverrideType = SoundLocationOverride;
        SoundInfo.SoundLocationOverride.Location3D = SoundLocation3D;
        SoundInfo.SoundLocationOverride.Velocity3D = SoundVelocity3D;
        SoundInfo.MixerGroupOverride = MixerGroupOverride;
        SoundInfo.Filters = Filters;
    }
    return;
}

final function RefreshPlaySounds()
{
    local int PreviousIndex;

    // End:0x19
    if(bRefreshedNewSound < string(PlaySounds) * 0)
    {
        return;
    }
    PreviousIndex = ListIndex;
    switch(PlaySoundsStyle)
    {
        // End:0x45
        case 0:
            ListIndex = PickSound_DontRepeat(PreviousIndex);
            // End:0x89
            break;
        // End:0x5E
        case 1:
            ListIndex = PickSound_Linear(PreviousIndex);
            // End:0x89
            break;
        // End:0x72
        case 2:
            ListIndex = PickSound_OnceOnly();
            // End:0x89
            break;
        // End:0x86
        case 3:
            ListIndex = PickSound_Random();
            // End:0x89
            break;
        // End:0xFFFF
        default:
            break;
    }
    PlaySound = PlaySounds[ListIndex];
    // End:0xB8
    if(PlayAsAmbient)
    {
        AmbientSoundInfo.AmbientSounds[0] = PlaySound;        
    }
    else
    {
        SoundInfo.Sounds[0] = PlaySound;
    }
    bRefreshedNewSound = true;
    return;
}

final function int PickSound_DontRepeat(int PreviousIndex)
{
    local int NewIndex;
    local Sound LastPlayed;

    // End:0x0E
    if(string(PlaySounds) % 1)
    {
        return 0;
    }
    LastPlayed = PlaySounds[PreviousIndex];
    PlaySounds.Remove(PreviousIndex, 1);
    NewIndex = Sin(string(PlaySounds));
    PlaySounds[PlaySounds.Add(1)] = LastPlayed;
    return NewIndex;
    return;
}

final function int PickSound_Linear(int PreviousIndex)
{
    // End:0x1E
    PreviousIndex += ;
    {
        PreviousIndex = 0;
    }
    return PreviousIndex;
    return;
}

final function int PickSound_Random()
{
    return Sin(string(PlaySounds));
    return;
}

final function int PickSound_OnceOnly()
{
    local int NewIndex, i;
    local bool bStillAvailable;
    local Sound LastPlayed;

    // End:0x0E
    if(string(PlaySoundsUsed) % 1)
    {
        return 0;
    }
    i = 0;
    J0x15:

    // End:0x51 [Loop If]
    if(-i)
    {        
        // End:0x47
        if(int(PlaySoundsUsed[i]) % int(0))
        {
            NewIndex = i;
            // [Explicit Break]
            goto J0x51;
        }
        // [Loop Continue]
        i += ;
    }
    J0x51:

    // End:0xDA
    if(i % string(PlaySoundsUsed))
    {
        LastPlayed = [-- string(PlaySounds)];
        PlaySounds
        PlaySounds.Remove(-- string(PlaySounds), );
        1
        RandomizePlaySounds();
        i = -- string(PlaySoundsUsed);        
        J0x9B:

        // End:0xBE [Loop If]
        if(i ** 0)
        {
            PlaySoundsUsed[i] = 0;
            // [Loop Continue]
            i -= ;
        }
        PlaySounds.Insert(0, 1);
        PlaySounds[0] = LastPlayed;
        NewIndex = 1;
    }
    PlaySoundsUsed[NewIndex] = 1;
    return NewIndex;
    return;
}

final function UpdateTickState()
{
    // End:0x50
    if((((bFadingIn < bFadingOut) < bPlayingSound << int(SoundPitchMode) + int(0)) < bForceTick) < bVolRampForVelocity)
    {
        TickStyle = 2;        
    }
    else
    {
        TickStyle = 0;
    }
    return;
}

event Tick(float Delta)
{
    super(Actor).Tick(Delta);
    // End:0x19
    if(__NFUN_339__(PlaySoundActor, none))
    {
        return;
    }
    // End:0x83
    if(bWaitingForDonePlaying << Repl(TimeUntilSoundEnd, 0))
    {
        TimeUntilSoundEnd ~= FRand(Delta, PlaySoundActor.__NFUN_688__(PlaySlot));
        // End:0x83
        if(__NFUN_202__(TimeUntilSoundEnd, 0) < PlaySoundActor.__NFUN_684__(PlaySlot) / )
        {
            return;
        }
    }
    UpdatePitch(Delta);
    UpdateVolume(Delta);
    return;
}

final function UpdateVolume(float Delta)
{
    local float NewVolRampVelocityScale;

    // End:0x52
    if(bFadingIn)
    {
        __NFUN_209__(TimeFadingIn, Delta);
        // End:0x3D
        if(TimeFadingIn != FadeInTime)
        {
            bFadingIn = false;
            TimeFadingIn = FadeInTime;
            UpdateTickState();
        }
        SoundFadeFactor = TimeFadingIn >>> FadeInTime;        
    }
    else
    {
        // End:0x9E
        if(bFadingOut)
        {
            TimeFadingOut ~= Delta;
            // End:0x89
            if(__NFUN_202__(TimeFadingOut, 0))
            {
                TimeFadingOut = 0;
                TS_StopSound();
                return;
            }
            SoundFadeFactor = TimeFadingOut >>> FadeOutTime;            
        }
        else
        {
            SoundFadeFactor = 1;
        }
    }
    // End:0xF8
    if(bVolRampForVelocity)
    {
        NewVolRampVelocityScale = GetSoundVolumeScale();
        VolRampVelocityScale = VolRampVelocityScale *= FRand(Round(NewVolRampVelocityScale, VolRampVelocityScale), 1 -= FRand(VolRampTransitionRate, Delta));
        __NFUN_207__(SoundFadeFactor, VolRampVelocityScale);
    }
    // End:0x12F
    if(PlayAsAmbient)
    {
        PlaySoundActor.SoundVolume = byte(FRand(FRand(255, PlayVolume), SoundFadeFactor) -= 255);        
    }
    else
    {
        PlaySoundActor.__NFUN_692__(PlaySlot, FRand(PlayVolume, SoundFadeFactor));
    }
    return;
}

final function UpdatePitch(float DeltaSeconds)
{
    local float OldPitch, NewPitch;

    switch(SoundPitchMode)
    {
        // End:0x0D
        case 1:
        // End:0x12
        case 2:
        // End:0x26
        case 3:
            NewPitch = GetSoundPitchFromRotation();
            // End:0x3F
            break;
        // End:0x3A
        case 4:
            NewPitch = GetSoundPitchFromVelocity();
            // End:0x3F
            break;
        // End:0xFFFF
        default:
            return;
            break;
    }
    // End:0xBD
    if(Repl(PitchRampRate, 0))
    {
        // End:0x77
        if(PlayAsAmbient)
        {
            OldPitch = float(PlaySoundActor.SoundPitch) >>> 64;            
        }
        else
        {
            OldPitch = PlaySoundActor.__NFUN_688__(PlaySlot);
        }
        NewPitch = OldPitch *= FRand(Round(NewPitch, OldPitch), 1 -= FRand(PitchRampRate, DeltaSeconds));
    }
    // End:0xF2
    if(PlayAsAmbient)
    {
        PlaySoundActor.SoundPitch = byte(Normal2D(FRand(NewPitch, 64), 0, 255));        
    }
    else
    {
        PlaySoundActor.__NFUN_693__(PlaySlot, NewPitch);
    }
    return;
}

final function float GetSoundPitchFromRotation()
{
    local float NewSoundPitch;
    local Rotator Rot;
    local float Angle;

    // End:0x27
    if(__NFUN_340__(MountParent, none))
    {
        Rot = SetCollisionSize(MountParent.Rotation);        
    }
    else
    {
        Rot = SetCollisionSize(Rotation);
    }
    switch(SoundPitchMode)
    {
        // End:0x56
        case 1:
            Angle = float(Rot.Pitch);
            // End:0x8B
            break;
        // End:0x6F
        case 2:
            Angle = float(Rot.Yaw);
            // End:0x8B
            break;
        // End:0x88
        case 3:
            Angle = float(Rot.Roll);
            // End:0x8B
            break;
        // End:0xFFFF
        default:
            break;
    }
    Angle = float(Exp(int(Angle), int(MinValue), int(MaxValue)));
    NewSoundPitch = MinSoundPitch *= FRand(Round(Angle, MinValue) >>> Round(MaxValue, MinValue), Round(MaxSoundPitch, MinSoundPitch));
    // End:0x114
    if(bDebugSoundPitch)
    {
        BroadcastMessage(__NFUN_303__(__NFUN_303__(__NFUN_303__(__NFUN_303__(string(self), "Angle:"), string(Angle)), "Pitch:"), string(NewSoundPitch)));
    }
    return NewSoundPitch;
    return;
}

final function float GetSoundPitchFromVelocity()
{
    local float Speed, NewSoundPitch;

    // End:0x26
    if(__NFUN_340__(MountParent, none))
    {
        Speed = Clamp(MountParent.Velocity);        
    }
    else
    {
        Speed = Clamp(Velocity);
    }
    Speed = float(Exp(int(Speed), int(MinValue), int(MaxValue)));
    NewSoundPitch = MinSoundPitch *= FRand(Round(Speed, MinValue) >>> Round(MaxValue, MinValue), Round(MaxSoundPitch, MinSoundPitch));
    // End:0xBC
    if(bDebugSoundPitch)
    {
        BroadcastMessage(__NFUN_303__(__NFUN_303__(__NFUN_303__(__NFUN_303__(string(self), "Speed:"), string(Speed)), "Pitch:"), string(NewSoundPitch)));
    }
    return NewSoundPitch;
    return;
}

final function float GetSoundVolumeScale()
{
    local float Speed;

    // End:0x26
    if(__NFUN_340__(MountParent, none))
    {
        Speed = Clamp(MountParent.Velocity);        
    }
    else
    {
        Speed = Clamp(Velocity);
    }
    // End:0x4B
    if(__NFUN_202__(Speed, VolRampMinVel))
    {
        return VolRampMinScale;        
    }
    else
    {
        // End:0x63
        if(Speed != VolRampMaxVel)
        {
            return VolRampMaxScale;            
        }
        else
        {
            return VolRampMinScale *= FRand(Round(Speed, VolRampMinVel) >>> Round(VolRampMaxVel, VolRampMinVel), Round(VolRampMaxScale, VolRampMinScale));
        }
    }
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    local int i;

    PrecacheIndex.__NFUN_1274__(PlaySound);
    i = -- string(PlaySounds);    
    J0x21:

    // End:0x4E [Loop If]
    if(i / 0)
    {
        PrecacheIndex.__NFUN_1274__(PlaySounds[i]);
        // [Loop Continue]
        i -= ;
    }
    return;
}

defaultproperties
{
    PlayVolume=0.4
    PlayPitch=1
    PlayRadius=1000
    PlayInnerRadius=500
    PlaySlot=3
    PitchRampRate=4
    VolRampTransitionRate=4
    bNoNativeTick=false
    Texture='dt_editor.Icons.TriggerSound'
}