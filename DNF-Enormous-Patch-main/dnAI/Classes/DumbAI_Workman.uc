/*******************************************************************************
 * DumbAI_Workman generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DumbAI_Workman extends Workman
    config
    collapsecategories;

function SetAnimCutScene(bool NewAnimCutScene)
{
    super(AIActor).SetAnimCutScene(true);
    return;
}

simulated event bool OnEvalBonesHelper()
{
    DumbAIEvalBones();
    return false;
    return;
}

event PostBeginPlay()
{
    super(AIActor).PostBeginPlay();
    AIDisableIK();
    return;
}

function InitialiseWeapons()
{
    local Actor A;

    __NFUN_1334__();
    // End:0x68
    if(__NFUN_340__(Weapon, none))
    {
        Weapon.TickStyle = 0;
        Weapon.bDumbMesh = true;
        // End:0x67
        foreach Weapon.__NFUN_753__(class'Actor', A)
        {
            // End:0x66
            if(__NFUN_340__(A, none))
            {
                A.__NFUN_614__();
            }            
        }        
    }
    return;
}

defaultproperties
{
    Nodes(0)=(Ident=Root,Status=0,ReportedInvalid=false,SucCond=1,SucFunc=None,FailCond=1,FailFunc=None,Op=85,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(1)=(Ident=idle,Status=0,ReportedInvalid=false,SucCond=79,SucFunc=None,FailCond=1,FailFunc=None,Op=85,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(2)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=1,SucFunc=None,FailCond=1,FailFunc=None,Op=0,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(3)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=1,SucFunc=None,FailCond=1,FailFunc=None,Op=0,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(4)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=85,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(5)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=85,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(6)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=96,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(7)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=145,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(8)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=143,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(9)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=52,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(10)=(Ident=GotoGoalFacePos,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=47,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(11)=(Ident=GotoGoalFacePosOneStep,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=48,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(12)=(Ident=StepAside,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=46,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    FSMStates(0)=(FSM=Root,Ident=Default,FSMSucc=false,FSMFail=false,Transitions=((Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(1)=(FSM=Root,Ident=idle,FSMSucc=false,FSMFail=false,Transitions=((Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(2)=(FSM=None,Ident=None,FSMSucc=false,FSMFail=false,Transitions=((Ident=AvoidDanger,Cond=0,Func=COND_ShouldAvoidDanger,Win=0,Code=0,StateTableIndex=0),(Ident=AvoidDanger,Cond=0,Func=COND_ShouldAvoidTarget,Win=0,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(3)=(FSM=None,Ident=None,FSMSucc=false,FSMFail=false,Transitions=((Ident=Pain,Cond=0,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=AvoidDanger,Cond=0,Func=COND_ShouldAvoidDanger,Win=0,Code=0,StateTableIndex=0),(Ident=AvoidDanger,Cond=0,Func=COND_ShouldAvoidTarget,Win=0,Code=0,StateTableIndex=0),(Ident=GotoGuardPos,Cond=0,Func=COND_ShouldGotoGuardPos,Win=0,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(4)=(FSM=None,Ident=None,FSMSucc=false,FSMFail=false,Transitions=((Ident=Pain,Cond=0,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=AvoidDanger,Cond=0,Func=COND_ShouldAvoidDanger,Win=0,Code=0,StateTableIndex=0),(Ident=AvoidDanger,Cond=0,Func=COND_ShouldAvoidTarget,Win=0,Code=0,StateTableIndex=0),(Ident=GotoGuardPos,Cond=0,Func=COND_ShouldGotoGuardPos,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(5)=(FSM=None,Ident=None,FSMSucc=false,FSMFail=false,Transitions=((Ident=AvoidDanger,Cond=0,Func=COND_ShouldAvoidDanger,Win=1,Code=0,StateTableIndex=0),(Ident=AvoidDanger,Cond=0,Func=COND_ShouldAvoidTarget,Win=1,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(6)=(FSM=None,Ident=None,FSMSucc=true,FSMFail=true,Transitions=((Ident=GotoGoalFaceActor,Cond=5,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoGoalFacePos,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(7)=(FSM=None,Ident=None,FSMSucc=true,FSMFail=true,Transitions=((Ident=GotoGoalFacePos,Cond=9,Func=None,Win=0,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(8)=(FSM=None,Ident=None,FSMSucc=true,FSMFail=true,Transitions=((Ident=GotoGoalFaceActor,Cond=5,Func=None,Win=0,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(9)=(FSM=None,Ident=None,FSMSucc=true,FSMFail=true,Transitions=((Ident=GotoGoalFacePosOneStep,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(10)=(FSM=None,Ident=None,FSMSucc=true,FSMFail=true,Transitions=none,NodeIndex=0)
    FSMStates(11)=(FSM=AvoidDanger,Ident=Wait,FSMSucc=true,FSMFail=true,Transitions=none,NodeIndex=0)
    FSMStates(12)=(FSM=Wait,Ident=Default,FSMSucc=true,FSMFail=true,Transitions=((Ident=FaceTarget,Cond=59,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=StepAside,Cond=0,Func=COND_ShouldStepAside,Win=1,Code=0,StateTableIndex=0),(Ident=FaceGuardedActor,Cond=9,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(13)=(FSM=Wait,Ident=FaceTarget,FSMSucc=false,FSMFail=false,Transitions=((Ident=StepAside,Cond=0,Func=COND_ShouldStepAside,Win=0,Code=0,StateTableIndex=0),(Ident=FaceGuardedActor,Cond=9,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(14)=(FSM=Wait,Ident=idle,FSMSucc=false,FSMFail=false,Transitions=((Ident=FaceTarget,Cond=59,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=StepAside,Cond=0,Func=COND_ShouldStepAside,Win=0,Code=0,StateTableIndex=0),(Ident=FaceGuardedActor,Cond=9,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(15)=(FSM=Wait,Ident=StepAside,FSMSucc=false,FSMFail=false,Transitions=((Ident=FaceTarget,Cond=59,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=StepAside,Cond=0,Func=COND_ShouldStepAside,Win=1,Code=0,StateTableIndex=0),(Ident=FaceGuardedActor,Cond=9,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(16)=(FSM=Wait,Ident=FaceGuardedActor,FSMSucc=false,FSMFail=false,Transitions=((Ident=FaceTarget,Cond=59,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=StepAside,Cond=0,Func=COND_ShouldStepAside,Win=0,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    HasWeaponTargetEvaluator=false
    HasLookTargetEvaluator=false
    HasBoneAimer=false
    DumbAI=true
    MountOnSpawn(0)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(1)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(2)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(3)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(4)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(5)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(6)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(7)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(8)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(9)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(10)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(11)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(12)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(13)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(14)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(15)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(16)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(17)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(18)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(19)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    MountOnSpawn(20)=(bSkipVerifySelf=false,SpawnClass=none,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    AutoRegisterIKClasses(0)=none
    Physics=9
    bBlockKarma=false
    bHasEvalBonesHelper=true
}