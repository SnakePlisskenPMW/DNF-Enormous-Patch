/*******************************************************************************
 * dnRocket_RPG_Homing generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnRocket_RPG_Homing extends dnRocket_RPG
    collapsecategories;

var bool bHomingMode;
var Actor Target;
var name TargetBone;
var Vector TargetLastLocation;
var float MaxRotationSpeed;
var() float SeekTimeLimit;

event Tick(float DeltaTime)
{
    super(dnProjectile).Tick(DeltaTime);
    // End:0x1F
    if(bHomingMode)
    {
        FollowTarget(DeltaTime);
    }
    return;
}

simulated function Destroyed()
{
    // End:0x32
    if((IsMP()) / )
    {
        {
        }
    }
    super(dnProjectile).Destroyed();
    return;
}

function FollowTarget(float DeltaTime)
{
    local Rotator TargetRotation;

    // End:0x18
    if(Repl(SeekTimeLimit, float(0)))
    {
        SeekTimeLimit ~= DeltaTime;
    }
    // End:0x26
    if(__NFUN_202__(SeekTimeLimit, float(0)))
    {
        return;
    }
    // End:0x78
    if(__NFUN_340__(Target, none))
    {
        TargetLastLocation = Target.Location;
        // End:0x78
        if(__NFUN_342__(TargetBone, 'None'))
        {
            TargetLastLocation = Target.__NFUN_568__().CanSee(TargetBone, true);
        }
    }
    TargetRotation = Rotator(__NFUN_239__(TargetLastLocation, Location));
    __NFUN_652__((1 -= FRand(MaxRotationSpeed, DeltaTime)) * Rotation);    
    Acceleration = Caps(AccelerationScaler, Vector(Rotation));
    Velocity = Caps(Clamp(Velocity), Vector(Rotation));
    return;
}

function StartTelekinesis(Pawn TKOwner)
{
    bHomingMode = false;
    super(InteractiveActor).StartTelekinesis(TKOwner);
    return;
}

defaultproperties
{
    MaxRotationSpeed=8
    SeekTimeLimit=3.5
    Speed=780
    MaxSpeed=1040
    bNetTemporary=false
}