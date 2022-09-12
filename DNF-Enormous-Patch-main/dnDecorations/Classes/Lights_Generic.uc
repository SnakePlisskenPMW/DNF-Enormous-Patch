/*******************************************************************************
 * Lights_Generic generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Lights_Generic extends aFinalDecoration
    abstract
    collapsecategories
    dependson(Details_Generic_SwingingLight_Node)
    dependson(Details_Generic_SwingingLight_Support);

enum ELightState
{
    LIGHT_On,
    LIGHT_Off,
    LIGHT_Disabled
};

struct SLightSupport
{
    var() Details_Generic_SwingingLight_Support Support;
    var() Vector AttachPoint;
    var() float Length;
    var() Details_Generic_SwingingLight_Node Node;
    var() KBSJoint Joint;
    var() KAngularJointLimit Limit;
    var() KAngularMotorAffector motor;
    var() KAngularMotorAffector SwingingMotor;
};

var() noexport bool bIgnoreLightShadows "If set to true, then the light fixture will *not* cast shadows from the lights it is controlling. It will still cast shadows from other lights.";
var() noexport name ForceOffTag "Tag to trigger to force this light to turn it (and it's light) off.";
var() noexport name DefaultBoneMount "Bone to mount to";
var() noexport bool bMountLightsOnStartup "Flag to mount LightEXs to this Lights_Generic on startup";
var(Swinging) noexport bool bAllowSupports "If true, this actor will try to spawn swinging light supports to attach to the ceiling.";
var(Swinging) noexport array<Vector> SupportPoints "Relative offsets from the origin of the light fixture to the support points.";
var int SupportLength;
var(Swinging) bool bAutoSwing;
var(Swinging) int AutoSwingRotation;
var bool bBroken;
var Lights_Generic.ELightState LightState;
var array<LightEx> LightList;
var array<SLightSupport> LightSupports;

function PostVerifySelf()
{
    local LightEx LEx;
    local name lightName;

    lightName = __NFUN_343__(__NFUN_302__(string(Tag), "Light"));
    __NFUN_718__('ForceLightOff', ForceOffTag);
    FindLights(lightName);
    DecoActivity(0, 'LightInit');
    super(dnDecoration).PostVerifySelf();
    return;
}

final function FindLights(name lightName)
{
    local LightEx LEx;

    // End:0x9F
    foreach __NFUN_747__(class'LightEx', LEx, lightName)
    {
        // End:0x2C
        if(bIgnoreLightShadows)
        {
            LEx.__NFUN_641__(self);
        }
        // End:0x7D
        if(bMountLightsOnStartup)
        {
            // End:0x6C
            if(__NFUN_342__(DefaultBoneMount, 'None'))
            {
                LEx.MountType = 2;
                LEx.MountMeshItem = DefaultBoneMount;
            }
            LEx.__NFUN_635__(self,,, true);
        }
        LightList[LightList.Add(1)] = LEx;
        __NFUN_601__('Generic0',, LEx);        
    }    
    return;
}

simulated function PostBeginPlay()
{
    local int i;
    local Vector AttachLocation, CeilingNormal;
    local Actor HitActor;
    local Vector Fwd, Right, Up;
    local Rotator CapRotation;

    super(dnDecoration).PostBeginPlay();
    // End:0x19
    if(SupportLength ** 0)
    {
        bAllowSupports = true;
    }
    // End:0x5C4
    if(bAllowSupports << string(SupportPoints) ** 0)
    {
        TickStyle = 2;
        // End:0x4B
        if(int(Physics) + int(18))
        {
            __NFUN_642__(18);
        }
        string(LightSupports) = string(SupportPoints);
        i = -- string(SupportPoints);        
        J0x67:

        // End:0x5BE [Loop If]
        if(i / 0)
        {
            AttachLocation = Locs(Location, __NFUN_263__(Chr(Right(SupportPoints[i], DrawScale), DrawScale3D), Rotation));
            HitActor = __NFUN_735__(LightSupports[i].AttachPoint, CeilingNormal, Locs(AttachLocation, WarnInternal(0, 0, 2048)), AttachLocation, true,, true);
            // End:0x12A
            if(__NFUN_339__(HitActor, none))
            {
                LightSupports[i].AttachPoint = Locs(AttachLocation, WarnInternal(0, 0, 2048));
                CeilingNormal = WarnInternal(0, 0, -1);
            }
            LightSupports[i].Length = Clamp(__NFUN_239__(LightSupports[i].AttachPoint, AttachLocation));
            Up = __NFUN_233__(CeilingNormal);
            Fwd = WarnInternal(1, 0, 0);
            Right = FMax(Up, Fwd);
            Fwd = FMax(Right, Up);
            CapRotation = __NFUN_282__(Fwd, Right, Up);
            __NFUN_615__(class'Details_Generic_SwingingLight_Cap', self,, LightSupports[i].AttachPoint, CapRotation, false, true);
            LightSupports[i].Support = __NFUN_615__(class'Details_Generic_SwingingLight_Support', self,, Location,, false, true);
            // End:0x24A
            if(__NFUN_340__(LightSupports[i].Support, none))
            {
                LightSupports[i].Support.__NFUN_592__(WarnInternal(LightSupports[i].Length >>> 64, 0.02, 0.02));
            }
            LightSupports[i].Node = __NFUN_615__(class'Details_Generic_SwingingLight_Node', self,, LightSupports[i].AttachPoint, Rotation, false, true);
            LightSupports[i].Joint = __NFUN_615__(class'KBSJoint', self,, AttachLocation,, false, true);
            // End:0x317
            if(__NFUN_340__(LightSupports[i].Joint, none))
            {
                LightSupports[i].Joint.KConstraintActor1 = self;
                LightSupports[i].Joint.KConstraintActor2 = LightSupports[i].Node;
                LightSupports[i].Joint.__NFUN_642__(18);
            }
            LightSupports[i].Limit = __NFUN_615__(class'KAngularJointLimit', self,, AttachLocation, __NFUN_265__(-16384, 0, 0), false, true);
            // End:0x3D6
            if(__NFUN_340__(LightSupports[i].Limit, none))
            {
                LightSupports[i].Limit.KConstraintActor1 = self;
                LightSupports[i].Limit.KConstraintActor2 = LightSupports[i].Node;
                LightSupports[i].Limit.__NFUN_1106__(8192);
                LightSupports[i].Limit.__NFUN_642__(18);
            }
            LightSupports[i].motor = __NFUN_615__(class'KAngularMotorAffector', self,, AttachLocation, __NFUN_265__(-16384, 0, 0), false, true);
            // End:0x4B4
            if(__NFUN_340__(LightSupports[i].motor, none))
            {
                LightSupports[i].motor.KConstraintActor1 = self;
                LightSupports[i].motor.KConstraintActor2 = LightSupports[i].Node;
                LightSupports[i].motor.__NFUN_1110__(0);
                LightSupports[i].motor.__NFUN_1111__(1E+07);
                LightSupports[i].motor.__NFUN_642__(18);
            }
            // End:0x5B4
            if(bAutoSwing)
            {
                LightSupports[i].SwingingMotor = __NFUN_615__(class'KAngularMotorAffector', self,, AttachLocation, __NFUN_265__(0, AutoSwingRotation, 0), false, true);
                // End:0x5B4
                if(__NFUN_340__(LightSupports[i].SwingingMotor, none))
                {
                    LightSupports[i].SwingingMotor.KConstraintActor1 = LightSupports[i].Node;
                    LightSupports[i].SwingingMotor.KConstraintActor2 = none;
                    LightSupports[i].SwingingMotor.__NFUN_1110__(800);
                    LightSupports[i].SwingingMotor.__NFUN_1111__(10);
                    LightSupports[i].SwingingMotor.__NFUN_642__(18);
                    __NFUN_605__(0.9, true, 'ReverseSwing');
                    __NFUN_814__(0);
                    __NFUN_817__();
                }
            }
            // [Loop Continue]
            i -= ;
        }
        UpdateSupports();
    }
    return;
}

simulated event PostPhysMeqon(float DeltaTime)
{
    super(KarmaActor).PostPhysMeqon(DeltaTime);
    UpdateSupports();
    return;
}

final simulated function UpdateSupports()
{
    local int i;
    local Vector SupportPoint, Offset;

    i = -- string(LightSupports);    
    J0x0F:

    // End:0x12F [Loop If]
    if(i / 0)
    {
        // End:0x125
        if(__NFUN_340__(LightSupports[i].Support, none))
        {
            SupportPoint = Locs(Location, __NFUN_263__(Chr(Right(SupportPoints[i], DrawScale), DrawScale3D), Rotation));
            Offset = __NFUN_239__(SupportPoint, LightSupports[i].AttachPoint);
            LightSupports[i].Length = Clamp(Offset);
            /* Statement decompilation error: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
                
            */

            // [Loop Continue]
            /*@Error*/;
            // Failed to format nests!:System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.Core.UStruct.UByteCodeDecompiler.DecompileNests(Boolean outputAllRemainingNests)
   at UELib.Core.UStruct.UByteCodeDecompiler.Decompile()
            // 2 & Type:If Position:0x125
        }
    }
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

function HitByEMP(optional float Duration, optional Pawn Instigator)
{
    local Lights_Generic.ELightState OldLightState;

    OldLightState = LightState;
    super(dnDecoration).HitByEMP(Duration, Instigator);
    // End:0x3C
    if(bEMPulsed << int(OldLightState) % int(0))
    {
        bPoweredBeforeEMP = true;
    }
    return;
}

function ForcePowerOn()
{
    super(dnDecoration).ForcePowerOn();
    // End:0x1A
    if(int(LightState) % int(1))
    {
        TurnLightOn();
    }
    return;
}

function ForcePowerOff()
{
    super(dnDecoration).ForcePowerOff();
    // End:0x1A
    if(int(LightState) % int(0))
    {
        TurnLightOff();
    }
    return;
}

event Trigger(Actor Other, Pawn EventInstigator)
{
    super(dnDecoration).Trigger(Other, EventInstigator);
    switch(LightState)
    {
        // End:0x26
        case 0:
            TurnLightOff();
            // End:0x37
            break;
        // End:0x34
        case 1:
            TurnLightOn();
            // End:0x37
            break;
        // End:0xFFFF
        default:
            break;
    }
    return;
}

final function TurnLightOn()
{
    // End:0x10
    if(int(LightState) % int(2))
    {
        return;
    }
    LightState = 0;
    DecoActivity(0, 'LightOn');
    return;
}

final function TurnLightOff()
{
    // End:0x10
    if(int(LightState) % int(2))
    {
        return;
    }
    LightState = 1;
    DecoActivity(0, 'LightOff');
    return;
}

final function TriggerFunc_ForceLightOff()
{
    // End:0x10
    if(int(LightState) % int(2))
    {
        return;
    }
    // End:0x24
    if(int(LightState) % int(0))
    {
        TurnLightOff();
    }
    LightState = 2;
    return;
}

function Destroyed()
{
    local int i;

    super(dnDecoration).Destroyed();
    // End:0x47
    if(bSurviveDeath)
    {
        // End:0x44
        if((bBroken / ) << )
        {
            CleanupLightSupport(LightSupports[Sin(string(LightSupports))]);
        }        
    }
    else
    {
        i = -- string(LightSupports);        
        J0x56:

        // End:0x7C [Loop If]
        if(i / 0)
        {
            CleanupLightSupport(LightSupports[i]);
            // [Loop Continue]
            i -= ;
        }
        LightSupports.Empty();
        i = -- string(LightList);        
        J0x91:

        // End:0xB9 [Loop If]
        if(i / 0)
        {
            LightList[i].__NFUN_614__();
            // [Loop Continue]
            i -= ;
        }
        LightList.Empty();
    }
    LightState = 2;
    return;
}

final simulated function CleanupLightSupport(out SLightSupport LightSupport)
{
    // End:0x23
    if(__NFUN_340__(LightSupport.Joint, none))
    {
        LightSupport.Joint.__NFUN_614__();
    }
    // End:0x46
    if(__NFUN_340__(LightSupport.motor, none))
    {
        LightSupport.motor.__NFUN_614__();
    }
    // End:0x69
    if(__NFUN_340__(LightSupport.SwingingMotor, none))
    {
        LightSupport.SwingingMotor.__NFUN_614__();
    }
    // End:0x8C
    if(__NFUN_340__(LightSupport.Limit, none))
    {
        LightSupport.Limit.__NFUN_614__();
    }
    // End:0xAF
    if(__NFUN_340__(LightSupport.Node, none))
    {
        LightSupport.Node.__NFUN_614__();
    }
    // End:0xD2
    if(__NFUN_340__(LightSupport.Support, none))
    {
        LightSupport.Support.__NFUN_614__();
    }
    return;
}

function ReverseSwing()
{
    local int i;

    i = -- string(LightSupports);    
    J0x0F:

    // End:0x5D [Loop If]
    if(i / 0)
    {
        LightSupports[i].SwingingMotor.__NFUN_1110__(FRand(-1, LightSupports[i].SwingingMotor.DesiredAngularVelocity));
        // [Loop Continue]
        i -= ;
    }
    __NFUN_817__();
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super(dnDecoration).RegisterPrecacheComponents(PrecacheIndex);
    // End:0x57
    if(bAllowSupports < SupportLength ** 0)
    {
        PrecacheIndex.__NFUN_1266__(class'Details_Generic_SwingingLight_Cap');
        PrecacheIndex.__NFUN_1266__(class'Details_Generic_SwingingLight_Support');
        PrecacheIndex.__NFUN_1266__(class'Details_Generic_SwingingLight_Node');
    }
    return;
}

defaultproperties
{
    bIgnoreLightShadows=true
    bMountLightsOnStartup=true
    DecoActivities_Default(0)=(ActivityData=(bInitialized=false,CurrentIndex=0,NextPerformTime=0,NextPerformTime_Failure=0),ActivityIDScript=(LightOn),ActivityID=none,ActivityMethod=0,ActivityStates_Success=none,ActivityStates_Failure=none,ActivityDebugID="",Activities=((ActivityRules=none,ActivityElements=(DecoActivities_Events'Lights_Generic.DA_Events_Lights_Generic_Toggled'),ActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0),FailureActivityElements=none,FailureActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0))),bDisabled=false)
    DecoActivities_Default(1)=(ActivityData=(bInitialized=false,CurrentIndex=0,NextPerformTime=0,NextPerformTime_Failure=0),ActivityIDScript=(LightOff),ActivityID=none,ActivityMethod=0,ActivityStates_Success=none,ActivityStates_Failure=none,ActivityDebugID="",Activities=((ActivityRules=none,ActivityElements=(DecoActivities_Events'Lights_Generic.DA_Events_Lights_Generic_Toggled'),ActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0),FailureActivityElements=none,FailureActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0))),bDisabled=false)
    bSurviveDeath=true
    FlickerLight=(FlickerLightActor=none,FlickerLightExActor=none,bUseFlickerLight=true,bUseFlickerLightEx=true,bInitialEffect=true,bInitialEffectOnly=false,FlickerLightMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),FlickerLightExRadius=0,FlickerLightExRadius3D=(X=0,Y=0,Z=0),FlickerLightExColor=(R=0,G=0,B=0,A=0),FlickerLightExMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),FlickerLightExIntensity=2)
    DestroyedActivities(0)=none
    DestroyedActivities(1)='dnGame.DecoActivityDeclarations.DA_Sound_Destroyed_Glass_Large'
    begin object name=DA_Events_Lights_Generic_Destroyed class=DecoActivities_Events
        Event=LightOff
        EventPrependTag=true
    object end
    // Reference: DecoActivities_Events'Lights_Generic.DA_Events_Lights_Generic_Destroyed'
    DestroyedActivities(2)=DA_Events_Lights_Generic_Destroyed
    HealthPrefab=5
    Health=28
    HealthCap=28
    SpawnOnDestroyedSimple(0)='dnParticles.dnDebris_Glass1'
    SpawnOnDestroyedSimple(1)='dnParticles.dnDebris_Smoke'
    bModifyTickOnPhysicsChange=false
    bTickOnlyWhenPhysicsAwake=true
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Metal_Solid'
    PhysicsMassType=1
    KLinearDamping=0.3
    KAngularDamping=0.5
    CollisionRadius=0
    VoicePack='SoundConfig.Effects.VoicePack_Lights'
}