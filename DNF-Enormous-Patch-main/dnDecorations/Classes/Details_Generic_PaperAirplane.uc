/*******************************************************************************
 * Details_Generic_PaperAirplane generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Details_Generic_PaperAirplane extends Details_Generic
    abstract
    collapsecategories;

var() noexport float InitialThrust "Initial force given to object when thrown by player.";
var() noexport float ForceInterval "Time in seconds between random force application.";
var() noexport float ForceIntervalVariance "How much to vary ForceInterval.";
var() noexport float ForceAmount "Amount of force to apply at each ForceInterval.";
var() noexport float ForceAmountVariance "How much to vary ForceAmount.";
var() Vector CenterOfMassOffset;

event Trigger(Actor Other, Pawn EventInstigator)
{
    __NFUN_607__(Normal(ForceInterval, ForceIntervalVariance), false, 'AdjustHeading');
    __NFUN_820__(Right(__NFUN_263__(WarnInternal(1, 0, 0), Rotation), InitialThrust), GetCOM());
    return;
}

function Vector GetCOM()
{
    local float DrawScaleChange;
    local Vector COM, DrawScale3DChange;

    __NFUN_594__(DrawScaleChange, DrawScale3DChange);
    COM = __NFUN_263__(CenterOfMassOffset, Rotation);
    Lerp(COM, Caps(DrawScaleChange, DrawScale3DChange));
    Min(COM, Location);
    return COM;
    return;
}

function Vector GetImpulseLocation_Throwing()
{
    local float DrawScaleChange;
    local Vector COM, DrawScale3DChange;

    __NFUN_594__(DrawScaleChange, DrawScale3DChange);
    COM = CenterOfMassOffset;
    Lerp(COM, Caps(DrawScaleChange, DrawScale3DChange));
    return COM;
    return;
}

function Rotator GetBaseRotation_Dropping(Pawn Thrower, Rotator TestDropRotation)
{
    return __NFUN_265__(-8192, TestDropRotation.Yaw, 0);
    return;
}

simulated function Rotator AdjustDropDirection_Throwing(Pawn Thrower, Rotator DropDirection)
{
    return Rotation;
    return;
}

function float GetImpulseStrength_Throwing(Pawn Thrower, float BaseStrength, float HeldTime)
{
    return FRand(InitialThrust, ThrowForceScale);
    return;
}

simulated function Vector AdjustAngularVelocity_Throwing(Pawn Thrower, Vector CurrentAngularVelocity)
{
    return WarnInternal(0, 0, 0);
    return;
}

simulated function UnGrabbed(Pawn Grabber, bool Thrown)
{
    super(dnDecoration).UnGrabbed(Grabber, Thrown);
    // End:0x44
    if(Thrown << __NFUN_340__(DukePlayer(Grabber), none))
    {
        DukePlayer(Grabber).GivePermanentEgoCapAward(12);
    }
    __NFUN_607__(Normal(ForceInterval, ForceIntervalVariance), false, 'AdjustHeading');
    return;
}

function AdjustHeading()
{
    local Vector LinVel, Direction, LocationHit;

    __NFUN_794__(LinVel);
    // End:0x23
    if(__NFUN_200__(VRand(LinVel), 80))
    {
        __NFUN_608__('AdjustHeading');
        return;
    }
    Direction = WarnInternal(0, 0, 1);
    /* Statement decompilation error: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
        
    */

    /*@Error*/;
}

defaultproperties
{
    ForceInterval=1
    ForceIntervalVariance=0.75
    ForceAmount=300
    HealthPrefab=0
    DamageTypesIgnored(0)='dnGame.MeleeDamage'
    DamageTypesIgnored(1)='dnGame.MightyFootDamage'
    bGrabbable=true
    UsePhrase="<?int?dnDecorations.Details_Generic_PaperAirplane.UsePhrase?>"
    GrabInfo=(bCanDuckWhileHeld=true,MountItemOverride=mount_handright,MountOrigin=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),GrabAnimName=None,CarrierAnimName=CarryPaperAirplane,CarrierMountPose=CarryPosePaperAirplane,GrabSoundName=None,ThrowSoundName=PaperAirplane_Throw,GrabSoundInfo=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=none,SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0,VolumeVariance=0,InnerRadius=0,InnerRadiusVariance=0,Radius=0,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none),ThrowSoundInfo=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=none,SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0,VolumeVariance=0,InnerRadius=0,InnerRadiusVariance=0,Radius=0,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none))
    ThrowForceScale=0.5
    SpawnOnDestroyedSimple(0)='dnParticles.dnDebris_Paper1'
    bIgnorePawnDownwardForce=true
    bCanCrushOthers=false
    bTickOnlyWhenPhysicsAwake=true
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Paper'
    KLinearDamping=0
    KAngularDamping=0
    GravityScale=0
    EnableDisableThreshold=0.5
    Physics=18
    bNoNativeTick=false
    CollisionRadius=4
    CollisionHeight=1
    Mass=1
}