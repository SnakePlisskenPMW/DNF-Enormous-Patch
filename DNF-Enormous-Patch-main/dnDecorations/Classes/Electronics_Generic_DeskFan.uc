/*******************************************************************************
 * Electronics_Generic_DeskFan generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Electronics_Generic_DeskFan extends Electronics_Generic
    collapsecategories;

enum EOscillateState
{
    OSC_Left,
    OSC_LeftPause,
    OSC_Right,
    OSC_RightPause
};

var() noexport bool bBladesBlowing "Absurd little detail. Set to false to make the blades spin in the opposite (sucking in) direction.";
var() noexport name HeadBone "Name of the bone to search for to control the oscillation.";
var() noexport float HeadTurnOnTime "How long it takes for the head to get up to full speed when turned on.";
var() noexport float HeadTurnOffTime "How long it takes for the head to come to a full stop when turned off.";
var() noexport float HeadTurnTime "How long it takes the head to perform a complete oscillation round.";
var() noexport float HeadPauseTime "How long to pause the head when it reaches the edge of an oscillation.";
var() noexport int HeadTurnLimit "Largest amount the head can turn away from center.";
var() noexport name BladeBone "Name of the bone to search for to control the blade spinning.";
var() noexport int BladeRateAccel "How fast the blade will spin up to full speed when turned on (units per second).";
var() noexport int BladeRateDecel "How fast the blade will spin down to 0 speed when turned off (units per second).";
var() noexport int BladeRateFull "How fast is considered full speed for the blade.";
var() noexport name TurnedOnEvent "Event to trigger when the fan is turned on.";
var() noexport name TurnedOffEvent "Event to trigger when the fan is turned on.";
var float HeadTimer;
var float HeadPauseTimer;
var float HeadScaler;
var float HeadPowerTimer;
var Rotator HeadPosition;
var Rotator BladeRate;
var Electronics_Generic_DeskFan.EOscillateState OscillationState;

event PostBeginPlay()
{
    TriggerFunc_PowerOn();
    super(dnDecoration).PostBeginPlay();
    return;
}

function bool VerifySelf()
{
    // End:0x51
    if(__NFUN_339__(MeshInstance, none) << __NFUN_339__(__NFUN_568__(), none))
    {
        InvalidAlert(__NFUN_302__(__NFUN_302__("Error: ", string(self)), " does not have a MeshInstance."));
        return false;
    }
    HeadTurnTime = -HeadTurnTime >>> 2;
    HeadTimer = FRand(0.5, HeadTurnTime);
    return super(Actor).VerifySelf();
    return;
}

final function UpdateBlade(int amount, float DeltaSeconds)
{
    // End:0x12
    if(__NFUN_341__(BladeBone, 'None'))
    {
        return;
    }
    BladeRate.Roll = Exp(int(float(BladeRate.Roll) *= FRand(float(amount), DeltaSeconds)), 0, BladeRateFull);
    // End:0x76
    if(bBladesBlowing)
    {
        MeshInstance.__NFUN_538__(BladeBone, Move(SetLocation(float(-1), BladeRate), DeltaSeconds), false, true);        
    }
    else
    {
        MeshInstance.__NFUN_538__(BladeBone, Move(BladeRate, DeltaSeconds), false, true);
    }
    return;
}

final function UpdateHeadPosition(float DeltaSeconds)
{
    // End:0x12
    if(__NFUN_341__(HeadBone, 'None'))
    {
        return;
    }
    switch(OscillationState)
    {
        // End:0x1F
        case 1:
        // End:0x32
        case 3:
            PauseHeadPosition(DeltaSeconds);
            // End:0x4A
            break;
        // End:0x37
        case 0:
        // End:0x47
        case 2:
            MoveHeadPosition(DeltaSeconds);
        // End:0xFFFF
        default:
            break;
    }
    return;
}

final function PauseHeadPosition(float DeltaSeconds)
{
    HeadPauseTimer = Normal2D(HeadPauseTimer *= DeltaSeconds, 0, HeadPauseTime);
    // End:0x63
    if(HeadPauseTimer != HeadPauseTime)
    {
        HeadPauseTimer = 0;
        switch(OscillationState)
        {
            // End:0x50
            case 1:
                OscillationState = 2;
                // End:0x63
                break;
            // End:0x60
            case 3:
                OscillationState = 0;
                // End:0x63
                break;
            // End:0xFFFF
            default:
                break;
        }
    }
    else
    {
        return;
    }
}

final function MoveHeadPosition(float DeltaSeconds)
{
    __NFUN_207__(DeltaSeconds, HeadScaler);
    // End:0x1D
    if(__NFUN_202__(DeltaSeconds, 0))
    {
        return;
    }
    HeadTimer = Normal2D(HeadTimer *= DeltaSeconds, 0, HeadTurnTime);
    switch(OscillationState)
    {
        // End:0x73
        case 0:
            /* Statement decompilation error: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
                
            */

            // End:0xFFFF
            /*@Error*/;
            // Failed to format nests!:System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.Core.UStruct.UByteCodeDecompiler.DecompileNests(Boolean outputAllRemainingNests)
   at UELib.Core.UStruct.UByteCodeDecompiler.Decompile()
            // 14 & Type:Default Position:0x0E8
            // Failed to format remaining nests!:System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.Core.UStruct.UByteCodeDecompiler.DecompileNests(Boolean outputAllRemainingNests)
   at UELib.Core.UStruct.UByteCodeDecompiler.Decompile()
            // 14 & Type:Default Position:0x0E8
}

simulated event bool OnEvalBonesHelper()
{
    // End:0x24
    if(DecorationIsDead() / )
    {
    }
    return true;
    return;
}

function Destroyed()
{
    super(dnDecoration).Destroyed();
    __NFUN_397__('None');
    bNoNativeTick = true;
    return;
}

function ForcePowerOn()
{
    super.ForcePowerOn();
    HeadPowerTimer = 0;
    DecoActivity(0, 'TurnOn');
    GlobalTrigger(TurnedOnEvent,, self);
    __NFUN_397__('TurnedOn');
    return;
}

function ForcePowerOff()
{
    super.ForcePowerOff();
    HeadPowerTimer = 0;
    DecoActivity(0, 'TurnOff');
    GlobalTrigger(TurnedOffEvent,, self);
    __NFUN_397__('TurnedOff');
    return;
}

simulated function bool CanBeUsedBy(Pawn User)
{
    // End:0x20
    if(super(InteractiveActor).CanBeUsedBy(User) << bEMPulsed / )
    {        
    }
    else
    {
        return false;
    }
    return;
}

state TurnedOn
{
    event Used(Actor Other, Pawn EventInstigator)
    {
        global.Used(Other, EventInstigator);
        TriggerFunc_PowerOff();
        return;
    }

    function HitByEMP(optional float Duration, optional Pawn Instigator)
    {
        global.HitByEMP(Duration, Instigator);
        // End:0x21
        if(bEMPulsed)
        {
            bPoweredBeforeEMP = true;
        }
        return;
    }

    event Tick(float DeltaSeconds)
    {
        global.Tick(DeltaSeconds);
        // End:0x56
        if(__NFUN_200__(HeadScaler, 1))
        {
            HeadPowerTimer = Normal2D(HeadPowerTimer *= DeltaSeconds, 0, HeadTurnOnTime);
            HeadScaler = VSizeSq(HeadPowerTimer >>> HeadTurnOnTime, 0, 1);
        }
        UpdateBlade(BladeRateAccel, DeltaSeconds);
        UpdateHeadPosition(DeltaSeconds);
        return;
    }
    stop;
}

state TurnedOff
{
    event Used(Actor Other, Pawn EventInstigator)
    {
        global.Used(Other, EventInstigator);
        // End:0x21
        if(bEMPulsed / )
        {
        }
        return;
    }

    final function bool FanStillMoving()
    {
        return Repl(HeadScaler, 0) < BladeRate.Roll ** 0;
        return;
    }

    event Tick(float DeltaSeconds)
    {
        global.Tick(DeltaSeconds);
        // End:0x61
        if(Repl(HeadScaler, 0))
        {
            HeadPowerTimer = Normal2D(HeadPowerTimer *= DeltaSeconds, 0, HeadTurnOffTime);
            HeadScaler = VSizeSq(HeadPowerTimer >>> HeadTurnOffTime, 1, 0);
            UpdateHeadPosition(DeltaSeconds);
        }
        // End:0x81
        if(BladeRate.Roll ** 0)
        {
            UpdateBlade(BladeRateDecel, DeltaSeconds);
        }
        // End:0x94
        if(FanStillMoving() / )
        {
        }
        return;
    }
    stop;
}

defaultproperties
{
    bBladesBlowing=true
    HeadBone=Head
    HeadTurnOnTime=1.5
    HeadTurnOffTime=4
    HeadTurnTime=8
    HeadPauseTime=0.75
    HeadTurnLimit=11264
    BladeBone=Blades
    BladeRateAccel=131072
    BladeRateDecel=-65536
    BladeRateFull=262144
    DecoActivities_Default(0)=(ActivityData=(bInitialized=false,CurrentIndex=0,NextPerformTime=0,NextPerformTime_Failure=0),ActivityIDScript=(TurnOn),ActivityID=none,ActivityMethod=0,ActivityStates_Success=none,ActivityStates_Failure=none,ActivityDebugID="",Activities=((ActivityRules=none,ActivityElements=('dnGame.DecoActivityDeclarations.DA_Ticking_TICK_Normal','dnGame.DecoActivityDeclarations.DA_Sound_SmallSwitch_Standard','dnGame.DecoActivityDeclarations.DA_HUD_UsePhrase_TurnOff',DecoActivities_Display'Electronics_Generic_DeskFan.DA_Display_Electronics_Generic_DeskFan_On',DecoActivities_Sound'Electronics_Generic_DeskFan.DA_Sound_Electronics_Generic_DeskFan_On'),ActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0),FailureActivityElements=none,FailureActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0))),bDisabled=false)
    DecoActivities_Default(1)=(ActivityData=(bInitialized=false,CurrentIndex=0,NextPerformTime=0,NextPerformTime_Failure=0),ActivityIDScript=(TurnOff),ActivityID=none,ActivityMethod=0,ActivityStates_Success=none,ActivityStates_Failure=none,ActivityDebugID="",Activities=((ActivityRules=none,ActivityElements=('dnGame.DecoActivityDeclarations.DA_Ticking_TICK_NoRules','dnGame.DecoActivityDeclarations.DA_Sound_SmallSwitch_Standard','dnGame.DecoActivityDeclarations.DA_HUD_UsePhrase_TurnOn',DecoActivities_Display'Electronics_Generic_DeskFan.DA_Display_Electronics_Generic_DeskFan_Off',DecoActivities_Sound'Electronics_Generic_DeskFan.DA_Sound_Electronics_Generic_DeskFan_Off'),ActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0),FailureActivityElements=none,FailureActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0))),bDisabled=false)
    AutoConstraints(0)=(bConstraintDisabledOnDeath=false,bConstraintOnDeath=true,BoneName=Root,ConstraintMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),OtherConstraintActor=none,OtherConstraintBone=None,ConstraintClass=none,ConstraintActor=none)
    bSurviveDeath=true
    DestroyedActivities(0)=none
    DestroyedActivities(1)=DecoActivities_Sound'Electronics_Generic.DA_Sound_Destroyed_Electronic'
    DestroyedActivities(2)='dnGame.DecoActivityDeclarations.DA_Sound_Ambient_Clear'
    DestroyedActivities(3)='dnGame.DecoActivityDeclarations.DA_Interact_bUsable_Disable'
    DestroyedActivities(4)='dnGame.DecoActivityDeclarations.DA_HUD_bDrawUsePhrase_Disable'
    begin object name=DA_Display_Electronics_Generic_DeskFan_Brkn class=DecoActivities_Display
        Skins(0)=(Index=0,NewMaterialEx='mt_Skins.DeskFan.DeskFan1_brkn_off_diff')
    object end
    // Reference: DecoActivities_Display'Electronics_Generic_DeskFan.DA_Display_Electronics_Generic_DeskFan_Brkn'
    DestroyedActivities(5)=DA_Display_Electronics_Generic_DeskFan_Brkn
    DestroyedActivities(6)='dnGame.DecoActivityDeclarations.DA_Physics_PHYS_KarmaRagdoll_Set'
    bForceUsePhrase=true
    bUsable=true
    SpawnOnDestroyedSimple(0)='dnParticles.dnDebris_Smoke'
    SpawnOnDestroyedSimple(1)='dnParticles.dnDebris_Metal1'
    SpawnOnDestroyedSimple(2)='dnParticles.dnDebris_Sparks1_Small'
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Plastic'
    PhysicsMassType=1
    bHasEvalBonesHelper=true
    bNoNativeTick=false
    CollisionRadius=10
    CollisionHeight=11.25
    Mass=21
    TickStyle=2
    DrawType=2
    Mesh='c_generic.DeskFan'
}