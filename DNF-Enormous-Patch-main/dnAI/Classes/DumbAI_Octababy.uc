/*******************************************************************************
 * DumbAI_Octababy generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DumbAI_Octababy extends Octababy
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
    Nodes(3)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=1,SucFunc=None,FailCond=0,FailFunc=COND_ShouldEndAttackNormal,Op=0,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(4)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=1,SucFunc=None,FailCond=0,FailFunc=COND_ShouldEndAttackShrunkWater,Op=0,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(5)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=1,SucFunc=None,FailCond=21,FailFunc=None,Op=0,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(6)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=1,SucFunc=None,FailCond=1,FailFunc=None,Op=0,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(7)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=1,SucFunc=None,FailCond=1,FailFunc=None,Op=0,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(8)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=COND_ShouldNotAvoidTarget,FailCond=1,FailFunc=None,Op=0,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(9)=(Ident=None,Status=0,ReportedInvalid=false,SucCond=1,SucFunc=None,FailCond=1,FailFunc=None,Op=0,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(10)=(Ident=Default,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=85,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(11)=(Ident=idle,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=85,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(12)=(Ident=FaceTarget,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=145,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(13)=(Ident=FaceGuardedActor,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=143,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(14)=(Ident=GotoSearchPos,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=71,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(15)=(Ident=GotoJumpAttackRange,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=57,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(16)=(Ident=GotoMelee,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=61,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(17)=(Ident=StrafeMelee,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=123,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(18)=(Ident=GotoGoalFacePos,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=47,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(19)=(Ident=StepAside,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=49,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(20)=(Ident=JumpAttack,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=89,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(21)=(Ident=MeleeAttack,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=92,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(22)=(Ident=Roar,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=107,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(23)=(Ident=DodgeLeft,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=25,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(24)=(Ident=DodgeRight,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=26,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    Nodes(25)=(Ident=FreeMoveSpreadOut,Status=0,ReportedInvalid=false,SucCond=0,SucFunc=None,FailCond=0,FailFunc=None,Op=40,OpRef=0,SharedTransitions=none,StateTable=none,CurStateIndex=0)
    FSMStates(0)=(FSM=Root,Ident=Default,FSMSucc=false,FSMFail=false,Transitions=((Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(1)=(FSM=Root,Ident=idle,FSMSucc=false,FSMFail=false,Transitions=((Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(2)=(FSM=None,Ident=None,FSMSucc=false,FSMFail=false,Transitions=((Ident=Attack,Cond=0,Func=COND_ShouldAttack,Win=0,Code=0,StateTableIndex=0),(Ident=AvoidTarget,Cond=0,Func=COND_ShouldAvoidTarget,Win=0,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(3)=(FSM=None,Ident=None,FSMSucc=false,FSMFail=false,Transitions=((Ident=Attack,Cond=0,Func=COND_ShouldAttack,Win=0,Code=0,StateTableIndex=0),(Ident=AvoidTarget,Cond=0,Func=COND_ShouldAvoidTarget,Win=0,Code=0,StateTableIndex=0),(Ident=GotoGuardPos,Cond=0,Func=COND_ShouldGotoGuardPos,Win=0,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(4)=(FSM=None,Ident=None,FSMSucc=false,FSMFail=false,Transitions=((Ident=Attack,Cond=0,Func=COND_ShouldAttack,Win=1,Code=0,StateTableIndex=0),(Ident=GotoGuardPos,Cond=0,Func=COND_ShouldGotoGuardPos,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(5)=(FSM=None,Ident=None,FSMSucc=true,FSMFail=true,Transitions=((Ident=GotoGoalFacePos,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(6)=(FSM=None,Ident=None,FSMSucc=true,FSMFail=true,Transitions=none,NodeIndex=0)
    FSMStates(7)=(FSM=None,Ident=None,FSMSucc=true,FSMFail=true,Transitions=((Ident=AttackShrunkWater,Cond=0,Func=COND_ShouldAttackShrunkWater,Win=1,Code=0,StateTableIndex=0),(Ident=AttackNormal,Cond=0,Func=COND_ShouldAttackNormal,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(8)=(FSM=None,Ident=None,FSMSucc=false,FSMFail=false,Transitions=((Ident=AttackNormal,Cond=0,Func=COND_ShouldAttackNormal,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(9)=(FSM=None,Ident=None,FSMSucc=false,FSMFail=false,Transitions=((Ident=AttackShrunkWater,Cond=0,Func=COND_ShouldAttackShrunkWater,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(10)=(FSM=None,Ident=None,FSMSucc=false,FSMFail=false,Transitions=((Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=JumpAttack,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoSearchPos,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(11)=(FSM=AttackNormal,Ident=GotoMelee,FSMSucc=false,FSMFail=false,Transitions=((Ident=Dodge,Cond=0,Func=COND_ShouldDodge,Win=0,Code=0,StateTableIndex=0),(Ident=JumpAttack,Cond=13,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=MeleeAttack,Cond=0,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=GotoSearchPos,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(12)=(FSM=AttackNormal,Ident=JumpAttack,FSMSucc=false,FSMFail=false,Transitions=((Ident=Roar,Cond=0,Func=ShouldRoar,Win=1,Code=0,StateTableIndex=0),(Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoSearchPos,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(13)=(FSM=AttackNormal,Ident=Roar,FSMSucc=false,FSMFail=false,Transitions=((Ident=JumpAttack,Cond=13,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoSearchPos,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(14)=(FSM=AttackNormal,Ident=Wait,FSMSucc=false,FSMFail=false,Transitions=((Ident=Roar,Cond=11,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=JumpAttack,Cond=13,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=GotoMelee,Cond=0,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=GotoSearchPos,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(15)=(FSM=AttackNormal,Ident=FreeMoveSpreadOut,FSMSucc=false,FSMFail=false,Transitions=((Ident=MeleeAttack,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(16)=(FSM=AttackNormal,Ident=Dodge,FSMSucc=false,FSMFail=false,Transitions=((Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=MeleeAttack,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoSearchPos,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(17)=(FSM=AttackNormal,Ident=MeleeAttack,FSMSucc=false,FSMFail=false,Transitions=((Ident=FreeMoveSpreadOut,Cond=18,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoSearchPos,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(18)=(FSM=AttackNormal,Ident=GotoSearchPos,FSMSucc=false,FSMFail=false,Transitions=((Ident=Default,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(19)=(FSM=AttackShrunkWater,Ident=Default,FSMSucc=false,FSMFail=false,Transitions=((Ident=Melee,Cond=22,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=StrafeMelee,Cond=15,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(20)=(FSM=AttackShrunkWater,Ident=GotoMelee,FSMSucc=false,FSMFail=false,Transitions=((Ident=Dodge,Cond=0,Func=COND_ShouldDodge,Win=0,Code=0,StateTableIndex=0),(Ident=Melee,Cond=22,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=StrafeMelee,Cond=15,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(21)=(FSM=AttackShrunkWater,Ident=StrafeMelee,FSMSucc=false,FSMFail=false,Transitions=((Ident=Roar,Cond=0,Func=ShouldRoar,Win=1,Code=0,StateTableIndex=0),(Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(22)=(FSM=AttackShrunkWater,Ident=Melee,FSMSucc=false,FSMFail=false,Transitions=((Ident=Dodge,Cond=0,Func=COND_ShouldDodge,Win=0,Code=0,StateTableIndex=0),(Ident=StrafeMelee,Cond=15,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(23)=(FSM=AttackShrunkWater,Ident=Roar,FSMSucc=false,FSMFail=false,Transitions=((Ident=Dodge,Cond=0,Func=COND_ShouldDodge,Win=0,Code=0,StateTableIndex=0),(Ident=Melee,Cond=22,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(24)=(FSM=AttackShrunkWater,Ident=Wait,FSMSucc=false,FSMFail=false,Transitions=((Ident=Dodge,Cond=0,Func=COND_ShouldDodge,Win=0,Code=0,StateTableIndex=0),(Ident=Melee,Cond=22,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=Roar,Cond=11,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=StrafeMelee,Cond=15,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=GotoMelee,Cond=0,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(25)=(FSM=AttackShrunkWater,Ident=Dodge,FSMSucc=false,FSMFail=false,Transitions=((Ident=GotoMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=StrafeMelee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Melee,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=Wait,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(26)=(FSM=Melee,Ident=Default,FSMSucc=true,FSMFail=true,Transitions=((Ident=MeleeAttack,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(27)=(FSM=Melee,Ident=FaceTarget,FSMSucc=true,FSMFail=true,Transitions=((Ident=MeleeAttack,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(28)=(FSM=Melee,Ident=MeleeAttack,FSMSucc=true,FSMFail=true,Transitions=none,NodeIndex=0)
    FSMStates(29)=(FSM=Wait,Ident=Default,FSMSucc=true,FSMFail=true,Transitions=((Ident=FaceTarget,Cond=59,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=StepAside,Cond=0,Func=COND_ShouldStepAside,Win=0,Code=0,StateTableIndex=0),(Ident=FaceGuardedActor,Cond=9,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(30)=(FSM=Wait,Ident=FaceTarget,FSMSucc=false,FSMFail=false,Transitions=((Ident=StepAside,Cond=0,Func=COND_ShouldStepAside,Win=0,Code=0,StateTableIndex=0),(Ident=FaceGuardedActor,Cond=9,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(31)=(FSM=Wait,Ident=idle,FSMSucc=false,FSMFail=false,Transitions=((Ident=Dodge,Cond=0,Func=COND_ShouldDodge,Win=0,Code=0,StateTableIndex=0),(Ident=FaceTarget,Cond=59,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=StepAside,Cond=0,Func=COND_ShouldStepAside,Win=0,Code=0,StateTableIndex=0),(Ident=FaceGuardedActor,Cond=9,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(32)=(FSM=Wait,Ident=StepAside,FSMSucc=false,FSMFail=false,Transitions=((Ident=FaceTarget,Cond=59,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=StepAside,Cond=0,Func=COND_ShouldStepAside,Win=1,Code=0,StateTableIndex=0),(Ident=FaceGuardedActor,Cond=9,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(33)=(FSM=Wait,Ident=FaceGuardedActor,FSMSucc=false,FSMFail=false,Transitions=((Ident=FaceTarget,Cond=59,Func=None,Win=0,Code=0,StateTableIndex=0),(Ident=StepAside,Cond=0,Func=COND_ShouldStepAside,Win=0,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(34)=(FSM=Wait,Ident=Dodge,FSMSucc=false,FSMFail=false,Transitions=((Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(35)=(FSM=Dodge,Ident=Default,FSMSucc=false,FSMFail=false,Transitions=((Ident=FaceTarget,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=DodgeLeft,Cond=0,Func=COND_ShouldDodgeLeft,Win=1,Code=0,StateTableIndex=0),(Ident=DodgeRight,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(36)=(FSM=Dodge,Ident=FaceTarget,FSMSucc=false,FSMFail=false,Transitions=((Ident=DodgeLeft,Cond=0,Func=COND_ShouldDodgeLeft,Win=1,Code=0,StateTableIndex=0),(Ident=DodgeRight,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(37)=(FSM=Dodge,Ident=DodgeLeft,FSMSucc=true,FSMFail=true,Transitions=none,NodeIndex=0)
    FSMStates(38)=(FSM=Dodge,Ident=DodgeRight,FSMSucc=true,FSMFail=true,Transitions=none,NodeIndex=0)
    FSMStates(39)=(FSM=AvoidTarget,Ident=Default,FSMSucc=false,FSMFail=false,Transitions=((Ident=GotoGoalFacePos,Cond=0,Func=COND_ShouldGotoAvoidGoal,Win=1,Code=0,StateTableIndex=0),(Ident=Cower,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(40)=(FSM=AvoidTarget,Ident=GotoGoalFacePos,FSMSucc=false,FSMFail=false,Transitions=((Ident=Cower,Cond=0,Func=COND_SafeFromBiggerEnemy,Win=1,Code=0,StateTableIndex=0),(Ident=GotoGoalFacePos,Cond=0,Func=COND_ShouldGotoAvoidGoal,Win=1,Code=0,StateTableIndex=0),(Ident=Cower,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(41)=(FSM=AvoidTarget,Ident=Cower,FSMSucc=false,FSMFail=false,Transitions=((Ident=GotoGoalFacePos,Cond=0,Func=COND_NotSafeFromBigEnemy,Win=0,Code=0,StateTableIndex=0),(Ident=GotoGoalFacePos,Cond=0,Func=COND_ShouldMoveAround,Win=1,Code=0,StateTableIndex=0),(Ident=Cower,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(42)=(FSM=Cower,Ident=Default,FSMSucc=true,FSMFail=true,Transitions=((Ident=FaceTarget,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0),(Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(43)=(FSM=Cower,Ident=FaceTarget,FSMSucc=false,FSMFail=false,Transitions=((Ident=idle,Cond=0,Func=None,Win=1,Code=0,StateTableIndex=0)),NodeIndex=0)
    FSMStates(44)=(FSM=Cower,Ident=idle,FSMSucc=true,FSMFail=true,Transitions=none,NodeIndex=0)
    HasWeaponTargetEvaluator=false
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
    Physics=9
    bBlockKarma=false
    bHasEvalBonesHelper=true
}