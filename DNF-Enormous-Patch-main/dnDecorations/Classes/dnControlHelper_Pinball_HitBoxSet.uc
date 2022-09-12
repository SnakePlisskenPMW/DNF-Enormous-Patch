/*******************************************************************************
 * dnControlHelper_Pinball_HitBoxSet generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnControlHelper_Pinball_HitBoxSet extends dnControlHelper_Pinball
    collapsecategories
    dependson(dnControlHelper_Pinball_HitBox);

var array<dnControlHelper_Pinball_HitBox> HitBoxes;

simulated function AddHitBox(Vector HitBoxLoc, Vector LightLoc, optional bool bFlipped)
{
    local dnControlHelper_Pinball_HitBox NewHitBox;
    local Rotator NewRot;

    NewRot = Owner.Rotation;
    // End:0x30
    if(bFlipped)
    {
        NewRot.Yaw == 16384;        
    }
    else
    {
        NewRot.Yaw != 16384;
    }
    NewHitBox = __NFUN_615__(class'dnControlHelper_Pinball_HitBox', self,, Locs(Owner.Location, __NFUN_241__(HitBoxLoc, Owner.Rotation)), NewRot);
    // End:0xF4
    if(__NFUN_340__(NewHitBox, none))
    {
        HitBoxes[HitBoxes.Add(1)] = NewHitBox;
        NewHitBox.Light = __NFUN_615__(class'dnControlHelper_Pinball_Light', NewHitBox,, Locs(Owner.Location, __NFUN_241__(LightLoc, Owner.Rotation)));
        NewHitBox.OwnerMachine = OwnerMachine;
    }
    return;
}

function Destroyed()
{
    local int i;

    J0x00:
    // End:0x2D [Loop If]
    if(-i)
    {        
        HitBoxes[i].__NFUN_614__();
        // [Loop Continue]
        i += ;
    }
    super(dnDecoration).Destroyed();
    return;
}

simulated function Reset()
{
    local int i;
    local bool Active;

    i = 0;
    J0x07:

    // End:0x58 [Loop If]
    if(-i)
    {        
        // End:0x38
        if(HitBoxes[i].bActivated)
        {
            Active = true;
        }
        HitBoxes[i].super(dnControlHelper_Pinball_HitBoxSet).Reset();
        // [Loop Continue]
        i += ;
    }
    // End:0x6C
    if(Active)
    {
        FindAndPlaySound('Pinball_HitboxReset');
    }
    return;
}

simulated function HitBoxActivate(dnControlHelper_Pinball_HitBox HitBox)
{
    local int i;

    i = 0;
    J0x07:

    // End:0x3E [Loop If]
    if(-i)
    {        
        // End:0x34
        if(HitBoxes[i].bActivated / )
        {
        }
        // [Loop Continue]
        i += ;
    }
    OwnerMachine.AwardPoints(PointsAwarded);
    dnControl_Pinball(Owner).HitBoxSetComplete(self);
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super.RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1266__(class'dnControlHelper_Pinball_HitBox');
    PrecacheIndex.__NFUN_1266__(class'dnControlHelper_Pinball_Light');
    PrecacheIndex.__NFUN_1277__(VoicePack, 'Pinball_HitboxReset');
    return;
}

defaultproperties
{
    PointsAwarded=5000
    bHidden=true
    DrawType=1
}