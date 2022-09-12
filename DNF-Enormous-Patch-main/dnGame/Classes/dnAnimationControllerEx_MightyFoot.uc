/*******************************************************************************
 * dnAnimationControllerEx_MightyFoot generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnAnimationControllerEx_MightyFoot extends dnAnimationControllerEx_Weapon;

defaultproperties
{
    Animations(0)=(AnimationName=Activate,AnimationChannel=(ChannelName=Base,ChannelLink=0,bLinkedToBlock=false),AnimSequence=activate01,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=WeaponCallback_Activated,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(1)=(AnimationName=Deactivate,AnimationChannel=(ChannelName=Base,ChannelLink=0,bLinkedToBlock=false),AnimSequence=deactivate01,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=WeaponCallback_Deactivated,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(2)=(AnimationName=idle,AnimationChannel=(ChannelName=Base,ChannelLink=0,bLinkedToBlock=false),AnimSequence=idle01,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=None,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(3)=(AnimationName=Melee0,AnimationChannel=(ChannelName=Base,ChannelLink=0,bLinkedToBlock=false),AnimSequence=punch01,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=WeaponCallback_MeleeComplete,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(4)=(AnimationName=Melee1,AnimationChannel=(ChannelName=Base,ChannelLink=0,bLinkedToBlock=false),AnimSequence=punch01,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=WeaponCallback_MeleeComplete,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(5)=(AnimationName=Melee2,AnimationChannel=(ChannelName=Base,ChannelLink=0,bLinkedToBlock=false),AnimSequence=punch01,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=WeaponCallback_MeleeComplete,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(6)=(AnimationName=Melee3,AnimationChannel=(ChannelName=Base,ChannelLink=0,bLinkedToBlock=false),AnimSequence=punch01,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=WeaponCallback_MeleeComplete,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
}