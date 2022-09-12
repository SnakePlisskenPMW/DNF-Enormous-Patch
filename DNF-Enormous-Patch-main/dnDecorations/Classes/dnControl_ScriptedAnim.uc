/*******************************************************************************
 * dnControl_ScriptedAnim generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnControl_ScriptedAnim extends dnControl
    collapsecategories;

struct STriggerableAnims
{
    var() noexport anim name Sequence "Raw animation sequence name to play when AnimTag is triggered.";
    var() noexport name Tag "Trigger this event to make this animation play.";
    var() noexport bool bLoopAnim "If true, this animation will loop.";
    var() noexport float Frame "Frame to start animation on.";
    var() noexport float Rate "Rate to use for animation playback.  If left as 0.0, rate will automatically become 1.0.";
    var() noexport bool bNoInterrupt "If true and animation is already playing, will not attempt to play again.";
    var() noexport name AnimEndEvent "Event to trigger when this animation finishes.";
    var int SpecialEventID;
};

var() noexport deprecated Actor IKTargetActor "If set, this is the Actor the user will IK to.";
var() noexport bool bClearPreviousControlAnims "If true, we'll clear out all dnControl specific anim channels on attach.";
var() noexport bool bMoveToUserLocation "If true, this dnControl will move to the User's location on attach";
var() noexport bool bMoveToUserRotation "If true, this dnControl will match the User's rotation on attach";
var() noexport bool bWaitForDetachAnim "If true, the detach animation will play out entirely before detaching continues.  Otherwise, detaching will occur simultaneously.";
var() noexport bool bUsePhysMeqon "If true, PHYS_Meqon will be used to process animation motion.  Interpolation in/out will not work in this mode.";
var() noexport anim name AttachAnimName "Raw animation sequence to play during attach.  Can be left empty.";
var() noexport anim name DetachAnimName "Raw animation sequence to play during detach.  Can be left empty.";
var() noexport float AttachAnimStartFrame "Frame to start attach animation on.";
var() noexport float DetachAnimStartFrame "Frame to start detach animation on.";
var() noexport array<STriggerableAnims> Anims "List of triggerable animations";
var() noexport float AttachTime "Time it takes to interpolate in.";
var() noexport float DetachTime "Time it takes to interpolate out.";
var() noexport bool AIIgnored "If true, AI will not attack player.";

function PostVerifySelf()
{
    local int i;

    InterpolationInTime = AttachTime;
    InterpolationOutTime = DetachTime;
    super.PostVerifySelf();
    Texture = none;
    i = -- string(Anims);    
    J0x32:

    // End:0xF2 [Loop If]
    if(i / 0)
    {
        // End:0x67
        if(__NFUN_341__(Anims[i].Tag, 'None'))
        {
            Anims.Remove(i, 1);
            // [Explicit Continue]
            goto J0xE8;
        }
        Anims[i].SpecialEventID = __NFUN_718__('PlayAnim', Anims[i].Tag);
        Anims[i].Frame = VSize(0, Anims[i].Frame);
        // End:0xE8
        if(__NFUN_202__(Anims[i].Rate, 0))
        {
            Anims[i].Rate = 1;
        }
        J0xE8:

        // [Loop Continue]
        i -= ;
    }
    // End:0x10D
    if(__NFUN_341__(AttachAnimName, 'None'))
    {
        AttachAnimName = 'XSpecial_AnimEnd';
    }
    bDelayedDetach = true;
    // End:0x133
    if(__NFUN_341__(DetachAnimName, 'None'))
    {
        DetachAnimName = 'XSpecial_AnimEnd';        
    }
    else
    {
        bDelayedDetach = bWaitForDetachAnim;
    }
    return;
}

event PostBeginPlay()
{
    super(dnUsableSomething).PostBeginPlay();
    // End:0x2F
    if(bUsePhysMeqon << __NFUN_340__(InternalControlRemapper, none))
    {
        InternalControlRemapper.CoreType = 2;
    }
    return;
}

simulated event Actor GetIKActor(name LimbID)
{
    return IKTargetActor;
    return;
}

simulated function TriggerFunc_PlayAnim()
{
    return;
}

final simulated function OverrideUserAnimation(name EntryName, name AnimSequence, optional float Frame, optional float Rate, optional bool bLoopAnim, optional bool bNoInterrupt, optional name AnimEndEvent)
{
    local int AnimIndex;

    Frame = VSize(0, Frame);
    // End:0x2C
    if(__NFUN_202__(Rate, 0))
    {
        Rate = 1;
    }
    // End:0x183
    if(__NFUN_340__(User, none) << __NFUN_340__(User.AnimationController, none))
    {
        AnimIndex = User.AnimationController.__NFUN_1307__(EntryName);
        // End:0x183
        if(AnimIndex + -1)
        {
            User.AnimationController.Animations[AnimIndex].AnimSequence = AnimSequence;
            User.AnimationController.Animations[AnimIndex].AnimStartingFrame = Frame;
            User.AnimationController.Animations[AnimIndex].AnimRate = Rate;
            User.AnimationController.Animations[AnimIndex].bLoopAnim = bLoopAnim;
            User.AnimationController.Animations[AnimIndex].bForceCrossfade = bNoInterrupt / ;
        }
    }
    return;
}

simulated function AttachPawnSuccess(Pawn Attachee, optional bool bForced)
{
    Attachee.BecomeUnfrozen();
    // End:0x4B
    if(Attachee.Weapon.CanDeactivate() / )
    {
    }
    // End:0x60
    if(Attachee.IsDead())
    {
        return;
    }
    Attachee.ForceDetachCompleteFromUsableSomething();
    // End:0xA8
    if(bMoveToUserLocation)
    {
        __NFUN_645__(__NFUN_239__(Attachee.Location, WarnInternal(0, 0, Attachee.CollisionHeight)));
    }
    // End:0xC3
    if(bMoveToUserRotation)
    {
        __NFUN_652__(Attachee.Rotation);
    }
    // End:0xDC
    if(__NFUN_340__(InternalControlRemapper, none))
    {
        InternalControlRemapper.__NFUN_630__();
    }
    // End:0x11C
    if(bClearPreviousControlAnims << __NFUN_340__(Attachee.AnimationController, none))
    {
        Attachee.AnimationController.EmptyAnimChannels_ByBlock('FBBlock');
    }
    super.AttachPawnSuccess(Attachee, bForced);
    Attachee.__NFUN_842__();
    return;
}

event EnumerateRawAnimationSequences(out array<SAnimationEnumeration> References)
{
    local int i;

    super.EnumerateRawAnimationSequences(References);
    // End:0x30
    if(__NFUN_342__(AttachAnimName, 'None'))
    {
        AddAnimationEnumeration(References, AttachAnimName, class'Duke');
    }
    // End:0x55
    if(__NFUN_342__(DetachAnimName, 'None'))
    {
        AddAnimationEnumeration(References, DetachAnimName, class'Duke');
    }
    i = 0;
    J0x5C:

    // End:0xB1 [Loop If]
    if(-i)
    {        
        // End:0xA7
        if(__NFUN_342__(Anims[i].Sequence, 'None'))
        {
            AddAnimationEnumeration(References, Anims[i].Sequence, class'Duke');
        }
        // [Loop Continue]
        i += ;
    }
    return;
}

simulated event bool UsableSomething_AIShouldIgnoreUser()
{
    return AIIgnored;
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    local int i;

    super.RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1284__(class'Duke', AttachAnimName);
    PrecacheIndex.__NFUN_1284__(class'Duke', DetachAnimName);
    i = -- string(Anims);    
    J0x48:

    // End:0x7F [Loop If]
    if(i / 0)
    {
        PrecacheIndex.__NFUN_1284__(class'Duke', Anims[i].Sequence);
        // [Loop Continue]
        i -= ;
    }
    return;
}

state() AttachUserAnim
{
    function PlayUserAnim()
    {
        OverrideUserAnimation(States[CurrentStateIndex].UserAnimName, AttachAnimName, AttachAnimStartFrame);
        super.PlayUserAnim();
        User.__NFUN_842__();
        return;
    }
    stop;
}

state() idle
{
    simulated function TriggerFunc_PlayAnim()
    {
        local Actor Other;
        local Pawn EventInstigator;
        local int i, SpecialEventID;

        __NFUN_720__(Other, EventInstigator, SpecialEventID);
        i = -- string(Anims);        
        J0x21:

        // End:0x102 [Loop If]
        if(i / 0)
        {
            // End:0xF8
            if(Anims[i].SpecialEventID % SpecialEventID)
            {
                // End:0xF6
                if(__NFUN_340__(User, none) << __NFUN_340__(User.AnimationController, none))
                {
                    OverrideUserAnimation('ScriptedAnim_Animation', Anims[i].Sequence, Anims[i].Frame, Anims[i].Rate, Anims[i].bLoopAnim, Anims[i].bNoInterrupt, Anims[i].AnimEndEvent);
                    User.AnimationController.SetAnimState('ScriptedAnim_Animation');
                }
                return;
            }
            // [Loop Continue]
            i -= ;
        }
        return;
    }
    stop;
}

state() DetachUser
{
    function PlayUserAnim()
    {
        OverrideUserAnimation(States[CurrentStateIndex].UserAnimName, DetachAnimName, DetachAnimStartFrame);
        super.PlayUserAnim();
        return;
    }
    stop;
}

defaultproperties
{
    AttachTime=0.3
    DetachTime=0.3
    States(0)=(StateName=Useable,OutEvents=none,Transitions=((ControlEvent=3,CustomName=None,NewState=AttachUserLERP)),UserAnimName=None,UserSoundName=None,MyAnim=(Flags=(bLoop=false,bNoLoopEnd=false,bFade=false,bNoRemove=false,bLoopMovement=false,bInterrupt=false,bEarlyEnd=false,bAdjustStart=false),Animation=None,Channel=0,Rate=0,TweenTime=0),MySound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=none,SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0,VolumeVariance=0,InnerRadius=0,InnerRadiusVariance=0,Radius=0,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none),MySoundName=None,SubAnims=none)
    States(1)=(StateName=AttachUserLERP,OutEvents=none,Transitions=((ControlEvent=5,CustomName=None,NewState=AttachUserAnim)),UserAnimName=None,UserSoundName=None,MyAnim=(Flags=(bLoop=false,bNoLoopEnd=false,bFade=false,bNoRemove=false,bLoopMovement=false,bInterrupt=false,bEarlyEnd=false,bAdjustStart=false),Animation=None,Channel=0,Rate=0,TweenTime=0),MySound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=none,SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0,VolumeVariance=0,InnerRadius=0,InnerRadiusVariance=0,Radius=0,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none),MySoundName=None,SubAnims=none)
    States(2)=(StateName=AttachUserAnim,OutEvents=none,Transitions=((ControlEvent=7,CustomName=None,NewState=idle)),UserAnimName=ScriptedAnim_Activate,UserSoundName=None,MyAnim=(Flags=(bLoop=false,bNoLoopEnd=false,bFade=false,bNoRemove=false,bLoopMovement=false,bInterrupt=false,bEarlyEnd=false,bAdjustStart=false),Animation=None,Channel=0,Rate=0,TweenTime=0),MySound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=none,SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0,VolumeVariance=0,InnerRadius=0,InnerRadiusVariance=0,Radius=0,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none),MySoundName=None,SubAnims=none)
    States(3)=(StateName=idle,OutEvents=none,Transitions=((ControlEvent=4,CustomName=None,NewState=DetachUser)),UserAnimName=None,UserSoundName=None,MyAnim=(Flags=(bLoop=false,bNoLoopEnd=false,bFade=false,bNoRemove=false,bLoopMovement=false,bInterrupt=false,bEarlyEnd=false,bAdjustStart=false),Animation=None,Channel=0,Rate=0,TweenTime=0),MySound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=none,SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0,VolumeVariance=0,InnerRadius=0,InnerRadiusVariance=0,Radius=0,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none),MySoundName=None,SubAnims=none)
    States(4)=(StateName=DetachUser,OutEvents=none,Transitions=((ControlEvent=8,CustomName=None,NewState=DetachUserLERP)),UserAnimName=ScriptedAnim_Deactivate,UserSoundName=None,MyAnim=(Flags=(bLoop=false,bNoLoopEnd=false,bFade=false,bNoRemove=false,bLoopMovement=false,bInterrupt=false,bEarlyEnd=false,bAdjustStart=false),Animation=None,Channel=0,Rate=0,TweenTime=0),MySound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=none,SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0,VolumeVariance=0,InnerRadius=0,InnerRadiusVariance=0,Radius=0,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none),MySoundName=None,SubAnims=none)
    States(5)=(StateName=DetachUserLERP,OutEvents=none,Transitions=((ControlEvent=6,CustomName=None,NewState=Useable)),UserAnimName=None,UserSoundName=None,MyAnim=(Flags=(bLoop=false,bNoLoopEnd=false,bFade=false,bNoRemove=false,bLoopMovement=false,bInterrupt=false,bEarlyEnd=false,bAdjustStart=false),Animation=None,Channel=0,Rate=0,TweenTime=0),MySound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=none,SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0,VolumeVariance=0,InnerRadius=0,InnerRadiusVariance=0,Radius=0,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none),MySoundName=None,SubAnims=none)
    ControlRemapperClass='dnControlRemapperEx_ScriptedAnim'
    bUseHomePose=false
    bDisableCrosshair=true
    bDetachOnDamage=false
    HeadAimMinOffset=(Pitch=0,Yaw=0,Roll=0)
    HeadAimMaxOffset=(Pitch=0,Yaw=0,Roll=0)
    bInternalUseDetach=false
    AttachUserSoundName=None
    DetachUserSoundName=None
    bHidden=true
    bCollideActors=false
    bCollideWorld=false
    TickStyle=0
    DrawType=1
}