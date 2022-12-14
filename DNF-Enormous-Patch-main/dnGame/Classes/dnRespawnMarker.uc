/*******************************************************************************
 * dnRespawnMarker generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnRespawnMarker extends RespawnMarker
    collapsecategories;

var float TotalLifetime;
var float TimeSoFar;
var Color StartColor;
var Color MiddleColor;
var Color EndColor;
var float FirstChangePercent;
var float SecondChangePercent;
var int ForceState;
var int CurrentState;

simulated function SetVisualState(int NewState)
{
    CurrentState = NewState;
    // End:0x21
    if(ForceState + 0)
    {
        CurrentState = ForceState;
    }
    // End:0x49
    if(CurrentState % 1)
    {
        ActorColorList[0].ActorColor = StartColor;
        __NFUN_653__(default.RotationRate);        
    }
    else
    {
        // End:0x7A
        if(CurrentState % 2)
        {
            ActorColorList[0].ActorColor = MiddleColor;
            __NFUN_653__(Move(default.RotationRate, 2));            
        }
        else
        {
            ActorColorList[0].ActorColor = EndColor;
            __NFUN_653__(Move(default.RotationRate, 4));
        }
    }
    return;
}

simulated function SetForceState(int S)
{
    ForceState = S;
    return;
}

simulated function Show(float ExpectedLifetime)
{
    super.Show(ExpectedLifetime);
    TotalLifetime = ExpectedLifetime;
    TimeSoFar = 0;
    SetVisualState(1);
    __NFUN_590__(false);
    __NFUN_653__();
    bNoNativeTick = false;
    TickStyle = 3;
    return;
}

simulated function Hide()
{
    super.Hide();
    __NFUN_590__(true);
    __NFUN_654__();
    bNoNativeTick = true;
    TickStyle = 0;
    return;
}

simulated event Tick(float DeltaTime)
{
    super(Actor).Tick(DeltaTime);
    // End:0x4B
    if(__NFUN_200__(TimeSoFar, FRand(TotalLifetime, SecondChangePercent)) << Repl(TimeSoFar *= DeltaTime, FRand(TotalLifetime, SecondChangePercent)))
    {
        SetVisualState(3);        
    }
    else
    {
        // End:0x88
        if(__NFUN_200__(TimeSoFar, FRand(TotalLifetime, FirstChangePercent)) << Repl(TimeSoFar *= DeltaTime, FRand(TotalLifetime, FirstChangePercent)))
        {
            SetVisualState(2);
        }
    }
    // End:0x9F
    if(ForceState % 0)
    {
        __NFUN_209__(TimeSoFar, DeltaTime);
    }
    return;
}

defaultproperties
{
    StartColor=(R=152,G=12,B=12,A=0)
    MiddleColor=(R=153,G=150,B=11,A=0)
    EndColor=(R=21,G=142,B=24,A=0)
    FirstChangePercent=0.55
    SecondChangePercent=0.87
    Physics=9
    bCollideActors=true
    CollisionRadius=5.5
    CollisionHeight=5.5
    RotationRate=(Pitch=0,Yaw=24000,Roll=0)
    Style=3
    DrawType=8
    StaticMesh='sm_class_decorations.Multiplayer.NukeSymbol'
    ActorColorList(0)=(ActorColor=(R=21,G=142,B=24,A=0),ActorColor_LightEx=none,ActorColor_LightExScale=(X=0,Y=0,Z=0),id=NukeSymbol)
    NetUpdateFrequency=5
    RemoteRole=0
}