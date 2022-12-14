/*******************************************************************************
 * TriggerViewSaturation generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class TriggerViewSaturation extends Triggers
    collapsecategories
    hidecategories(Filter,Interactivity,Karma,Lighting,Networking,Sound);

var Actor LinkedActor;
var name ScaleModifierGroupName;
var() noexport name MeshBoneName "If set, we will treat this bone on the mesh as the center instead of actor's origin";
var() noexport float FadeStartDistance "At this distance from the target actor we begin toning effects down before of distance.";
var() noexport float FadeEndDistance;
var() noexport float StartBlurBrightness "Bluring Brightness that will occur at 90 degrees";
var() noexport float StartBlur "Bur that will occur when looking directly at the linked actor";
var() float StartMotionBlur;
var() float FinalBlurBrightness;
var() float FinalBlur;
var() float FinalMotionBlur;
var() noexport bool bStartDisabled "If true, this will be disabled until it is triggered.";
var() Color StartColor;
var() Color FinalColor;
var SScreenFlash ScreenFlash;
var() noexport float DisableRampTime "Time to ramp down effects when Triggered Disabled";
var float BlurDelta;
var float BlurBrightnessDelta;
var float MotionBlurDelta;
var() noexport name EnableTrigger "Trigger to force enable.";
var() noexport name DisableTrigger "Trigger to force disable.";

function PostVerifySelf()
{
    super(Actor).PostVerifySelf();
    __NFUN_718__('ForceEnable', EnableTrigger);
    __NFUN_718__('ForceDisable', DisableTrigger);
    LinkedActor = FindActor(class'Actor', Event);
    BlurDelta = Round(FinalBlur, StartBlur);
    BlurBrightnessDelta = Round(FinalBlurBrightness, StartBlurBrightness);
    MotionBlurDelta = Round(FinalMotionBlur, StartMotionBlur);
    ScaleModifierGroupName = __NFUN_343__(__NFUN_302__(string('Group_'), string(self)));
    ScreenFlash.FlashID = __NFUN_343__(__NFUN_302__(string('Flash_'), string(self)));
    // End:0xB4
    if(__NFUN_204__(FadeEndDistance, FadeStartDistance))
    {
        __NFUN_209__(FadeStartDistance, 0.1);
    }
    // End:0xC5
    if(bStartDisabled)
    {
        TickStyle = 0;
    }
    return;
}

function Tick(float DeltaSeconds)
{
    super(Actor).Tick(DeltaSeconds);
    CheckDestroy();
    AdjustPlayerPawn(Level.__NFUN_1161__());
    return;
}

final function CheckDestroy()
{
    local PlayerPawn P;

    // End:0x42
    if(__NFUN_339__(LinkedActor, none) < __NFUN_340__(Pawn(LinkedActor), none) << Pawn(LinkedActor).IsDead())
    {
        ForceDisable();
        __NFUN_614__();
    }
    return;
}

final function Vector GetTargetLocation(Actor Target)
{
    // End:0x45
    if(__NFUN_342__(MeshBoneName, 'None') << __NFUN_340__(Target.__NFUN_568__(), none))
    {
        return Target.MeshInstance.CanSee(MeshBoneName, true, false);
    }
    return Target.Location;
    return;
}

event UnTouch(Actor Other)
{
    super(Actor).UnTouch(Other);
    // End:0x2E
    if(Other.bIsPlayerPawn)
    {
        RemoveEffects(PlayerPawn(Other));
    }
    return;
}

function AdjustPlayerPawn(PlayerPawn Target)
{
    local Vector LookDir, targetdir;
    local float DotP, Blur, BlurBrightness, MotionBlur, Dist, FinalPCT;

    LookDir = Vector(Target.ViewRotation);
    targetdir = __NFUN_239__(Target.__NFUN_872__(), GetTargetLocation(LinkedActor));
    /* Statement decompilation error: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
        
    */

    // End:0x22F
    /*@Error*/;
    // Failed to format nests!:System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.Core.UStruct.UByteCodeDecompiler.DecompileNests(Boolean outputAllRemainingNests)
   at UELib.Core.UStruct.UByteCodeDecompiler.Decompile()
    // 2 & Type:If Position:0x22F
    // Failed to format remaining nests!:System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.Core.UStruct.UByteCodeDecompiler.DecompileNests(Boolean outputAllRemainingNests)
   at UELib.Core.UStruct.UByteCodeDecompiler.Decompile()
    // 2 & Type:If Position:0x22F
}

final function RemoveEffects(PlayerPawn Target)
{
    Target.__NFUN_583__('Blur', ScaleModifierGroupName);
    Target.__NFUN_583__('BlurBrightness', ScaleModifierGroupName);
    Target.__NFUN_583__('MotionBlur', ScaleModifierGroupName);
    Target.MyHUD.RemoveScreenFlash(ScreenFlash.FlashID);
    return;
}

final function RemoveEffectsRampDown(PlayerPawn Target, float Time)
{
    Target.__NFUN_577__('Blur', ScaleModifierGroupName, 0,, Time);
    Target.__NFUN_577__('BlurBrightness', ScaleModifierGroupName, 0,, Time);
    Target.__NFUN_577__('MotionBlur', ScaleModifierGroupName, 0,, Time);
    ScreenFlash.ColorStart = ScreenFlash.ColorEnd;
    ScreenFlash.ColorEnd.A = 0;
    ScreenFlash.ColorEnd.R = 0;
    ScreenFlash.ColorEnd.G = 0;
    ScreenFlash.ColorEnd.B = 0;
    ScreenFlash.Lifetime = Time;
    Target.MyHUD.AddScreenFlash(ScreenFlash);
    return;
}

event Trigger(Actor Other, Pawn EventInstigator)
{
    super(Actor).Trigger(Other, EventInstigator);
    // End:0x27
    if(int(TickStyle) % int(2))
    {
        ForceDisable();        
    }
    else
    {
        TickStyle = 2;
    }
    return;
}

final function TriggerFunc_ForceEnable()
{
    TickStyle = 2;
    return;
}

final function TriggerFunc_ForceDisable()
{
    ForceDisable();
    return;
}

final function ForceDisable()
{
    local PlayerPawn P;

    TickStyle = 0;
    // End:0x2E
    foreach __NFUN_747__(class'PlayerPawn', P, 'DukePlayer')
    {
        RemoveEffectsRampDown(P, DisableRampTime);        
    }    
    return;
}

defaultproperties
{
    FadeEndDistance=250
    StartBlurBrightness=1
    ScreenFlash=(bAlwaysTick=false,bOnlyReplace=false,bResumeFlash=true,Priority=500,ReplaceMin=0,FlashID=None,FlashType=2,FlashStyle=0,ColorStart=(R=0,G=0,B=0,A=0),ColorMid=(R=0,G=0,B=0,A=0),ColorEnd=(R=0,G=0,B=0,A=0),Lifetime=0.01,LifetimeMid=0,LifetimeCurrent=0,ColorCurrent=(R=0,G=0,B=0,A=0),FlashEvent=None,FlashFunction=None,FlashFuncActor=none)
    DisableRampTime=5
    bNoNativeTick=false
    bDumbMesh=false
    bCollideActors=true
    CollisionRadius=10
    CollisionHeight=10
    TickStyle=2
}