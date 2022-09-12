/*******************************************************************************
 * Electronics_Generic_Computer_Mouse generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Electronics_Generic_Computer_Mouse extends Electronics_Generic_Computer
    abstract
    collapsecategories;

var Electronics_Generic_Computer_CPU CPU;

final function SetCPU(Electronics_Generic_Computer_CPU NewCPU)
{
    CPU = NewCPU;
    return;
}

final function MouseClick()
{
    __NFUN_657__(0, true);
    // End:0x10
    if(DecorationIsDead())
    {
        return;
    }
    // End:0x2C
    if(__NFUN_340__(CPU, none))
    {
        CPU.ReceivedPeripheralInput();
    }
    return;
}

defaultproperties
{
    DecoActivities_Default(0)=(ActivityData=(bInitialized=false,CurrentIndex=0,NextPerformTime=0,NextPerformTime_Failure=0),ActivityIDScript=none,ActivityID=(3),ActivityMethod=0,ActivityStates_Success=none,ActivityStates_Failure=none,ActivityDebugID="",Activities=((ActivityRules=none,ActivityElements=(DecoActivities_Sound'Electronics_Generic_Computer_Mouse.DA_Sound_ElctrGen_Cmptr_Mouse_Click',DecoActivities_Events'Electronics_Generic_Computer_Mouse.DA_Events_ElctrGen_Cmptr_Mouse_Click'),ActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0.3),FailureActivityElements=none,FailureActivitySetup=(bDisabled=false,bPerformedThisRound=false,PerformedCounter=0,LoopCount=0,PerformAgainDelay=0))),bDisabled=false)
    DestroyedActivities(0)=none
    DestroyedActivities(1)=DecoActivities_Sound'Electronics_Generic.DA_Sound_Destroyed_Electronic'
    DestroyedActivities(2)='dnGame.DecoActivityDeclarations.DA_Interact_bUsable_Disable'
    DestroyedActivities(3)='dnGame.DecoActivityDeclarations.DA_HUD_bForceUsePhrase_Disable'
    DestroyedActivities(4)='dnGame.DecoActivityDeclarations.DA_Physics_PHYS_Karma_Set'
    HealthPrefab=1
    bForceUsePhrase=true
    DesiredRotationYaw(0)=(bTemporal=false,bComplete=false,bLinked=false,bShortestDist=false,Target=1024,RealTarget=0,Start=0,Delta=0,Rate=1024,Exponent=0,TimeTotal=0.2,TimeMid=0.1,Timer=0,Style=3,StyleStopped=0,CrushDamage=(DamageHow=0,Damage=(Value=0,Variance=0),Rate=(Value=0,Variance=0),Timer=0),Event=None,FunctionComplete=None,EventAbort=None,FunctionAbort=None)
    Mass=10
}