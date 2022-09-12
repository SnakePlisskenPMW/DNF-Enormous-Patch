/*******************************************************************************
 * Industrial_Generic_FanMount generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Industrial_Generic_FanMount extends Industrial_Generic
    abstract
    collapsecategories;

var() noexport float FanOnSpeed "Unreal units per second to spin (65535 = 1 turn per second)";
var() noexport float FanRampUpTime "Time it takes to ramp up to full speed.";
var() noexport float FanRampDownTime "Time it takes to ramp down to full speed.";
var() noexport Sound FanOnSound "Sound to play when the fan is turned on.";
var() noexport Sound FanOffSound "Sound to play when the fan is turned off.";
var Industrial_Generic_Fan_Mounted MyFan;

function PostVerifySelf()
{
    super(dnDecoration).PostVerifySelf();
    FanRampUpTime = VSize(1E-05, FanRampUpTime);
    FanRampDownTime = VSize(1E-05, FanRampDownTime);
    // End:0x7C
    foreach __NFUN_747__(class'Industrial_Generic_Fan_Mounted', MyFan,, true)
    {
        // End:0x7B
        if(__NFUN_339__(MyFan.Owner, self))
        {
            MyFan.TurnOn(FanOnSpeed, FanOnSpeed >>> FanRampUpTime, FanOnSound);
            // End:0x7C
            break;
        }        
    }    
    return;
}

event Trigger(Actor Other, Pawn EventInstigator)
{
    super(dnDecoration).Trigger(Other, EventInstigator);
    // End:0x1D
    if((CanTrigger()) / )
    {
    }
    // End:0x8B
    if(__NFUN_340__(MyFan, none))
    {
        // End:0x65
        if(MyFan.bCurrentlyOn)
        {
            MyFan.TurnOff(0, FanOnSpeed >>> FanRampDownTime, FanOffSound);            
        }
        else
        {
            MyFan.TurnOn(FanOnSpeed, FanOnSpeed >>> FanRampUpTime, FanOnSound);
        }
    }
    return;
}

function ForcePowerOn()
{
    super(dnDecoration).ForcePowerOn();
    // End:0x4D
    if(__NFUN_340__(MyFan, none))
    {
        // End:0x4D
        if(MyFan.bCurrentlyOn / )
        {
        }
    }
    return;
}

function ForcePowerOff()
{
    super(dnDecoration).ForcePowerOff();
    // End:0x4B
    if(__NFUN_340__(MyFan, none))
    {
        // End:0x4B
        if(MyFan.bCurrentlyOn)
        {
            MyFan.TurnOff(0, FanOnSpeed >>> FanRampDownTime, FanOffSound);
        }
    }
    return;
}

function HitByEMP(optional float EMPTime, optional Pawn Instigator)
{
    // End:0x0E
    if(__NFUN_339__(MyFan, none))
    {
        return;
    }
    bPoweredBeforeEMP = MyFan.bCurrentlyOn;
    super(dnDecoration).HitByEMP(EMPTime, Instigator);
    return;
}

function Destroyed()
{
    super(dnDecoration).Destroyed();
    // End:0x38
    if(__NFUN_340__(MyFan, none))
    {
        MyFan.TurnOff(0, FanOnSpeed >>> FanRampDownTime, FanOffSound);
    }
    return;
}

defaultproperties
{
    FanOnSpeed=131072
    FanRampUpTime=3
    FanRampDownTime=6
    FanOnSound='a_ambient.Fans.BigFan04_StartRun'
    FanOffSound='a_ambient.Fans.BigFan04_Stop'
    bSurviveDeath=true
    FlickerLight=(FlickerLightActor=none,FlickerLightExActor=none,bUseFlickerLight=true,bUseFlickerLightEx=true,bInitialEffect=true,bInitialEffectOnly=false,FlickerLightMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=32768,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),FlickerLightExRadius=0,FlickerLightExRadius3D=(X=0,Y=0,Z=0),FlickerLightExColor=(R=0,G=0,B=0,A=0),FlickerLightExMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),FlickerLightExIntensity=2)
    DestroyedActivities(0)=none
    begin object name=DA_Sound_Fan_Mounted_Brkn class=DecoActivities_Sound
        SoundNames(0)=FanMount_Destruct
    object end
    // Reference: DecoActivities_Sound'Industrial_Generic_FanMount.DA_Sound_Fan_Mounted_Brkn'
    DestroyedActivities(1)=DA_Sound_Fan_Mounted_Brkn
    HealthPrefab=3
    EMPDisableTime=20
    MountOnSpawn(0)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=true,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    CollisionRadius=0
    CollisionHeight=25
}