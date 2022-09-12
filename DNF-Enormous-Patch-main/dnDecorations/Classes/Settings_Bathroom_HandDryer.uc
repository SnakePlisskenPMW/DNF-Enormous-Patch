/*******************************************************************************
 * Settings_Bathroom_HandDryer generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Settings_Bathroom_HandDryer extends Settings_Bathroom
    collapsecategories;

var Pawn Instigator;

function DecoEndAnim()
{
    local Engine.Object.ETickStyle CurrentTickStyle;

    CurrentTickStyle = TickStyle;
    super(dnDecoration).DecoEndAnim();
    TickStyle = CurrentTickStyle;
    return;
}

event Used(Actor Other, Pawn EventInstigator)
{
    Instigator = EventInstigator;
    super(dnDecoration).Used(Other, EventInstigator);
    return;
}

final function TurnOn()
{
    Instigator.HandQuickAction('HandQuickAction_Switch_PushButton');
    DecoActivity(0, 'TurnOn');
    return;
}

final function TurnOff()
{
    DecoActivity(0, 'TurnOff');
    return;
}

function ForcePowerOff()
{
    TurnOff();
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super(dnDecoration).RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1281__('HandQuickAction_Switch_PushButton');
    return;
}

defaultproperties
{
    DecoActivities_Default(0)=(ActivityData=(bInitialized=false,CurrentIndex=0,NextPerformTime=0,NextPerformTime_Failure=0),ActivityIDScript=(TurnOn),ActivityID=none,ActivityMethod=0,ActivityStates_Success=none,ActivityStates_Failure=none,ActivityDebugID="",Activities=((ActivityRules=none,ActivityElements=(DecoActivities_Sound'Settings_Bathroom_HandDryer.DA_Sound_Settings_Bathroom_HandDryer_TurnOn','dnGame.DecoActivityDeclarations.DA_Interact_bUsable_Disable',DecoActivities_Animation'Settings_Bathroom_HandDryer.DA_Anim_Settings_Bathroom_HandDryer_TurnOn'),ActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0),FailureActivityElements=none,FailureActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0))),bDisabled=false)
    DecoActivities_Default(1)=(ActivityData=(bInitialized=false,CurrentIndex=0,NextPerformTime=0,NextPerformTime_Failure=0),ActivityIDScript=(TurnOff),ActivityID=none,ActivityMethod=0,ActivityStates_Success=none,ActivityStates_Failure=none,ActivityDebugID="",Activities=((ActivityRules=none,ActivityElements=('dnGame.DecoActivityDeclarations.DA_Sound_Ambient_Clear',DecoActivities_Sound'Settings_Bathroom_HandDryer.DA_Sound_Settings_Bathroom_HandDryer_TurnOff','dnGame.DecoActivityDeclarations.DA_Interact_bUsable_Enable'),ActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0),FailureActivityElements=none,FailureActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0))),bDisabled=false)
    DecoActivities_Default(2)=(ActivityData=(bInitialized=false,CurrentIndex=0,NextPerformTime=0,NextPerformTime_Failure=0),ActivityIDScript=none,ActivityID=(3),ActivityMethod=0,ActivityStates_Success=none,ActivityStates_Failure=(1),ActivityDebugID="",Activities=((ActivityRules=none,ActivityElements=(DecoActivities_Events'Settings_Bathroom_HandDryer.DA_Events_Settings_Bathroom_HandDryer_Used'),ActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=7.5),FailureActivityElements=none,FailureActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0))),bDisabled=false)
    bSurviveDeath=true
    FlickerLight=(FlickerLightActor=none,FlickerLightExActor=none,bUseFlickerLight=true,bUseFlickerLightEx=true,bInitialEffect=true,bInitialEffectOnly=false,FlickerLightMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),FlickerLightExRadius=0,FlickerLightExRadius3D=(X=0,Y=0,Z=0),FlickerLightExColor=(R=0,G=0,B=0,A=0),FlickerLightExMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),FlickerLightExIntensity=2)
    DestroyedActivities(0)=none
    DestroyedActivities(1)='dnGame.DecoActivityDeclarations.DA_Sound_Destroyed_Generic'
    begin object name=DA_Display_Settings_Bathroom_HandDryer_Brkn class=DecoActivities_Display
        RenderObject='c_generic.HandDryer_brkn'
    object end
    // Reference: DecoActivities_Display'Settings_Bathroom_HandDryer.DA_Display_Settings_Bathroom_HandDryer_Brkn'
    DestroyedActivities(2)=DA_Display_Settings_Bathroom_HandDryer_Brkn
    DestroyedActivities(3)='dnGame.DecoActivityDeclarations.DA_Sound_Ambient_Clear'
    DestroyedActivities(4)='dnGame.DecoActivityDeclarations.DA_Interact_bUsable_Disable'
    bDisableUseOnEMP=true
    bForceUsePhrase=true
    bUsable=true
    bCheckUseAngle=true
    UseAngleThreshold=0
    EMPDisableTime=10
    bCollideWorld=false
    CollisionRadius=4
    CollisionHeight=2
    DrawType=2
    Mesh='c_generic.HandDryer'
    SoundVolume=112
    SoundRadius=256
    SoundInnerRadius=128
}