/*******************************************************************************
 * AIAnimationControllerEx generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AIAnimationControllerEx extends AnimationControllerEx
    native;

cpptext
{
// Stripped
}

struct SDeathAnim
{
    var name Front;
    var name Back;
    var name FinishMeFront;
    var name FinishMeBack;
    var name ReviveMeFront;
    var name ReviveMeBack;
    var float FinishMeFrontTimeOut;
    var float FinishMeBackTimeOut;
};

struct SPainAnim
{
    var name Front;
    var name Back;
    var name Left;
    var name Right;
    var name FrontBig;
    var name BackBig;
    var name LeftBig;
    var name RightBig;
    var Engine.BaseAI.EAIAnimController NewAnimCont;
    var Engine.Object.EPawnBodyPart WoundedPart;
};

struct SMeleePainAnim
{
    var name Front;
    var name FrontLeft;
    var name FrontRight;
    var name Back;
    var name FrontBig;
    var name FrontLeftBig;
    var name FrontRightBig;
    var name BackBig;
};

var int LastPrimaryRefId;
var AIAnimationControllerEx FallbackController;
var SDeathAnim DeathAnims[20];
var bool HasDeathScriptAnim;
var bool bUseSimplePain;
var bool bNonDirectionalPains;
var SPainAnim PainAnims[20];
var SMeleePainAnim MeleePainAnims;
var SBoneAimConstraints MuzzleAimerContraints;
var SBoneAimConstraints WeaponAimerContraints;
var SBoneAimConstraints HeadAimerContraints;
var SBoneAimConstraints BodyAimerContraints;

function int GetLastPrimaryRefId()
{
    return LastPrimaryRefId;
    return;
}

simulated function SetFallbackController(AIAnimationControllerEx NewFallbackController)
{
    FallbackController = NewFallbackController;
    return;
}

// Export UAIAnimationControllerEx::execSetAnimState_RateScaled(FFrame&, void* const)
native simulated function bool SetAnimState_RateScaled(name AnimName, float RateScale, optional bool ForceReset, optional bool UseExactAnimName);

// Export UAIAnimationControllerEx::execSetAnimState(FFrame&, void* const)
native simulated function bool SetAnimState(name AnimName, optional bool ForceReset, optional bool LogError);

function bool SetAnimOverride(name AnimName, name NewSequenceName, name NewChannelName, float NewRate, float NewTween, bool NewLoop, float NewStartFrame, float NewAnimEarlyEndTime, float NewBlendInTime, float NewBlendOutTime, bool NewAdjustStart, bool NewInterrupt)
{
    local int BlockIndex, j, AnimIndex;

    // End:0x18
    if(__NFUN_341__(AnimName, 'Anim_DeathScript'))
    {
        HasDeathScriptAnim = true;
    }
    BlockIndex = __NFUN_1310__(AnimName);
    // End:0x1AE
    if(BlockIndex / 0)
    {
        j = 0;
        J0x38:

        // End:0x1AC [Loop If]
        if(-j)
        {            
            AnimIndex = __NFUN_1307__(AnimationBlocks[BlockIndex].AnimationNames[j], -1);
            // End:0x85
            if(-AnimIndex)
            {                
                // [Explicit Continue]
                goto J0x1A2;
            }
            Animations[AnimIndex].AnimSequence = NewSequenceName;
            Animations[AnimIndex].AnimStartingFrame = NewStartFrame;
            Animations[AnimIndex].AnimationChannel.ChannelName = NewChannelName;
            Animations[AnimIndex].AnimRate = NewRate;
            Animations[AnimIndex].AnimTween = NewTween;
            Animations[AnimIndex].bLoopAnim = NewLoop;
            Animations[AnimIndex].AnimEarlyEndTime = NewAnimEarlyEndTime;
            Animations[AnimIndex].AnimBlendInInfo.BlendTotalTime = NewBlendInTime;
            Animations[AnimIndex].GroupCrossfadeOverride = NewBlendInTime;
            Animations[AnimIndex].AnimBlendOutInfo.BlendTotalTime = NewBlendOutTime;
            Animations[AnimIndex].bAdjustStart = NewAdjustStart;
            Animations[AnimIndex].bInterrupt = NewInterrupt;
            J0x1A2:

            // [Loop Continue]
            j += ;
        }
        return true;
    }
    AnimIndex = __NFUN_1307__(AnimName, -1);
    // End:0x26F
    if(-AnimIndex)
    {        
        // End:0x228
        if(__NFUN_340__(FallbackController, none))
        {
            return FallbackController.SetAnimOverride(AnimName, NewSequenceName, NewChannelName, NewRate, NewTween, NewLoop, NewStartFrame, NewAnimEarlyEndTime, NewBlendInTime, NewBlendOutTime, NewAdjustStart, NewInterrupt);
        }
        __NFUN_355__(__NFUN_302__(__NFUN_302__(__NFUN_302__(string(RenderOwner), "::"), string(self)), "::SetAnimOverride - Unknown animation name."));
        return false;
    }
    Animations[AnimIndex].AnimSequence = NewSequenceName;
    Animations[AnimIndex].AnimStartingFrame = NewStartFrame;
    Animations[AnimIndex].AnimationChannel.ChannelName = NewChannelName;
    Animations[AnimIndex].AnimRate = NewRate;
    Animations[AnimIndex].AnimTween = NewTween;
    Animations[AnimIndex].bLoopAnim = NewLoop;
    Animations[AnimIndex].AnimEarlyEndTime = NewAnimEarlyEndTime;
    Animations[AnimIndex].AnimBlendInInfo.BlendTotalTime = NewBlendInTime;
    Animations[AnimIndex].GroupCrossfadeOverride = NewBlendInTime;
    Animations[AnimIndex].AnimBlendOutInfo.BlendTotalTime = NewBlendOutTime;
    Animations[AnimIndex].bAdjustStart = NewAdjustStart;
    Animations[AnimIndex].bInterrupt = NewInterrupt;
    return true;
    return;
}

function bool ClearAnimOverride(name AnimName)
{
    local int BlockIndex, j, AnimIndex;

    // End:0x18
    if(__NFUN_341__(AnimName, 'Anim_DeathScript'))
    {
        HasDeathScriptAnim = false;
    }
    BlockIndex = __NFUN_1310__(AnimName);
    // End:0x21E
    if(BlockIndex / 0)
    {
        __NFUN_355__(__NFUN_302__(string(AnimName), " is an anim block"));
        j = 0;
        J0x57:

        // End:0x21C [Loop If]
        if(-j)
        {            
            AnimIndex = __NFUN_1307__(AnimationBlocks[BlockIndex].AnimationNames[j], -1);
            // End:0xA4
            if(-AnimIndex)
            {                
                // [Explicit Continue]
                goto J0x212;
            }
            Animations[AnimIndex].AnimSequence = default.Animations[AnimIndex].AnimSequence;
            Animations[AnimIndex].AnimationChannel.ChannelName = default.Animations[AnimIndex].AnimationChannel.ChannelName;
            Animations[AnimIndex].AnimRate = default.Animations[AnimIndex].AnimRate;
            Animations[AnimIndex].AnimTween = default.Animations[AnimIndex].AnimTween;
            Animations[AnimIndex].bLoopAnim = default.Animations[AnimIndex].bLoopAnim;
            Animations[AnimIndex].AnimEarlyEndTime = default.Animations[AnimIndex].AnimEarlyEndTime;
            Animations[AnimIndex].AnimBlendInInfo.BlendTotalTime = default.Animations[AnimIndex].AnimBlendInInfo.BlendTotalTime;
            Animations[AnimIndex].AnimBlendOutInfo.BlendTotalTime = default.Animations[AnimIndex].AnimBlendOutInfo.BlendTotalTime;
            Animations[AnimIndex].bAdjustStart = default.Animations[AnimIndex].bAdjustStart;
            Animations[AnimIndex].bInterrupt = default.Animations[AnimIndex].bInterrupt;
            J0x212:

            // [Loop Continue]
            j += ;
        }
        return true;
    }
    AnimIndex = __NFUN_1307__(AnimName, -1);
    // End:0x2B1
    if(-AnimIndex)
    {        
        // End:0x25E
        if(__NFUN_340__(FallbackController, none))
        {
            return FallbackController.ClearAnimOverride(AnimName);
        }
        __NFUN_355__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(string(RenderOwner), "::"), string(self)), "::ClearAnimOverride - Unknown animation name: "), string(AnimName)));
        return false;
    }
    Animations[AnimIndex].AnimSequence = default.Animations[AnimIndex].AnimSequence;
    Animations[AnimIndex].AnimationChannel.ChannelName = default.Animations[AnimIndex].AnimationChannel.ChannelName;
    Animations[AnimIndex].AnimRate = default.Animations[AnimIndex].AnimRate;
    Animations[AnimIndex].AnimTween = default.Animations[AnimIndex].AnimTween;
    Animations[AnimIndex].bLoopAnim = default.Animations[AnimIndex].bLoopAnim;
    Animations[AnimIndex].AnimEarlyEndTime = default.Animations[AnimIndex].AnimEarlyEndTime;
    Animations[AnimIndex].AnimBlendInInfo.BlendTotalTime = default.Animations[AnimIndex].AnimBlendInInfo.BlendTotalTime;
    Animations[AnimIndex].AnimBlendOutInfo.BlendTotalTime = default.Animations[AnimIndex].AnimBlendOutInfo.BlendTotalTime;
    Animations[AnimIndex].bAdjustStart = default.Animations[AnimIndex].bAdjustStart;
    Animations[AnimIndex].bInterrupt = default.Animations[AnimIndex].bInterrupt;
    return true;
    return;
}

function bool GetDeathAnimName(Engine.Object.EPawnBodyPart Part, int Damage, Vector Dir, out name AnimName, out name FinishMeAnimName, out name FinishMeReviveAnimName, out float FinishMeTimeout, out int UseExactAnimName)
{
    local Engine.BaseAI.EAIArcSector DamageSector;

    // End:0x1D
    if(HasDeathScriptAnim)
    {
        AnimName = 'Anim_DeathScript';
        UseExactAnimName = 1;
        return true;
    }
    DamageSector = AIActor(RenderOwner).CalcSector(Locs(RenderOwner.Location, Right(Dir, -1000)), 90, 90);
    switch(DamageSector)
    {
        // End:0x6C
        case 0:
        // End:0x71
        case 2:
        // End:0xD5
        case 3:
            AnimName = DeathAnims[int(Part)].Front;
            FinishMeAnimName = DeathAnims[int(Part)].FinishMeFront;
            FinishMeReviveAnimName = DeathAnims[int(Part)].ReviveMeFront;
            FinishMeTimeout = DeathAnims[int(Part)].FinishMeFrontTimeOut;
            // End:0x14A
            break;
        // End:0x139
        case 1:
            AnimName = DeathAnims[int(Part)].Back;
            FinishMeAnimName = DeathAnims[int(Part)].FinishMeBack;
            FinishMeReviveAnimName = DeathAnims[int(Part)].ReviveMeBack;
            FinishMeTimeout = DeathAnims[int(Part)].FinishMeBackTimeOut;
            // End:0x14A
            break;
        // End:0xFFFF
        default:
            AnimName = 'None';
            // End:0x14A
            break;
            break;
    }
    // End:0x15C
    if(__NFUN_342__(AnimName, 'None'))
    {
        return true;
    }
    return false;
    return;
}

event bool ShouldPlayBigPain(Engine.Object.EPawnBodyPart Part, class<DamageType> DamageType, int Damage, Vector Dir)
{
    // End:0x24
    if(__NFUN_357__(DamageType, class'ExplosionDamage') < __NFUN_357__(DamageType, class'MeleeDamage'))
    {
        return true;
    }
    return false;
    return;
}

function bool GetPainAnimNameSimple(Engine.Object.EPawnBodyPart Part, class<DamageType> DamageType, int Damage, Vector Dir, out name AnimName, out Engine.BaseAI.EAIAnimController NextAnimCtrl, out Engine.Object.EPawnBodyPart WoundedPart, out Engine.BaseAI.EAIArcSector WoundSector)
{
    local float SideSector, BackSector;
    local bool BigPain;

    SideSector = 45;
    BackSector = 135;
    WoundSector = AIActor(RenderOwner).CalcSector(Locs(RenderOwner.Location, Right(Dir, -1000)), SideSector, BackSector);
    BigPain = ShouldPlayBigPain(Part, DamageType, Damage, Dir);
    // End:0x90
    if(BigPain)
    {
        AnimName = 'Anim_PainBig';        
    }
    else
    {
        AnimName = 'Anim_PainShort';
    }
    // End:0xA6
    if(bNonDirectionalPains)
    {
        return true;
    }
    switch(WoundSector)
    {
        // End:0xCE
        case 0:
            AnimName = __NFUN_343__(__NFUN_302__(string(AnimName), string('Front')));
            // End:0x13C
            break;
        // End:0xEE
        case 1:
            AnimName = __NFUN_343__(__NFUN_302__(string(AnimName), string('Back')));
            // End:0x13C
            break;
        // End:0x10E
        case 2:
            AnimName = __NFUN_343__(__NFUN_302__(string(AnimName), string('Left')));
            // End:0x13C
            break;
        // End:0x12E
        case 3:
            AnimName = __NFUN_343__(__NFUN_302__(string(AnimName), string('Right')));
            // End:0x13C
            break;
        // End:0xFFFF
        default:
            assert(-2);            
            // End:0x13C
            break;
            break;
    }
    return true;
    return;
}

function bool GetPainAnimName(Engine.Object.EPawnBodyPart Part, class<DamageType> DamageType, int Damage, Vector Dir, out name AnimName, out Engine.BaseAI.EAIAnimController NextAnimCtrl, out Engine.Object.EPawnBodyPart WoundedPart, out Engine.BaseAI.EAIArcSector WoundSector)
{
    local bool MeleePain;
    local float SideSector, BackSector;
    local bool BigPain;

    // End:0x38
    if(bUseSimplePain)
    {
        return GetPainAnimNameSimple(Part, DamageType, Damage, Dir, AnimName, NextAnimCtrl, WoundedPart, WoundSector);
    }
    MeleePain = __NFUN_357__(DamageType, class'MeleeDamage') << __NFUN_342__(MeleePainAnims.Front, 'None');
    // End:0x85
    if(MeleePain)
    {
        SideSector = 5;
        BackSector = 90;        
    }
    else
    {
        // End:0xD8
        if(__NFUN_342__(PainAnims[int(Part)].Left, 'None') << __NFUN_342__(PainAnims[int(Part)].Right, 'None'))
        {
            SideSector = 45;
            BackSector = 135;            
        }
        else
        {
            SideSector = 90;
            BackSector = 90;
        }
    }
    WoundSector = AIActor(RenderOwner).CalcSector(Locs(RenderOwner.Location, Right(Dir, -1000)), SideSector, BackSector);
    BigPain = ShouldPlayBigPain(Part, DamageType, Damage, Dir);
    AnimName = 'None';
    // End:0x282
    if(MeleePain)
    {
        switch(WoundSector)
        {
            // End:0x1AE
            case 0:
                // End:0x18B
                if(BigPain)
                {
                    AnimName = MeleePainAnims.FrontBig;
                }
                // End:0x1AB
                if(__NFUN_341__(AnimName, 'None'))
                {
                    AnimName = MeleePainAnims.Front;
                }
                // End:0x27F
                break;
            // End:0x1EF
            case 1:
                // End:0x1CC
                if(BigPain)
                {
                    AnimName = MeleePainAnims.BackBig;
                }
                // End:0x1EC
                if(__NFUN_341__(AnimName, 'None'))
                {
                    AnimName = MeleePainAnims.Back;
                }
                // End:0x27F
                break;
            // End:0x230
            case 2:
                // End:0x20D
                if(BigPain)
                {
                    AnimName = MeleePainAnims.FrontLeftBig;
                }
                // End:0x22D
                if(__NFUN_341__(AnimName, 'None'))
                {
                    AnimName = MeleePainAnims.FrontLeft;
                }
                // End:0x27F
                break;
            // End:0x271
            case 3:
                // End:0x24E
                if(BigPain)
                {
                    AnimName = MeleePainAnims.FrontRight;
                }
                // End:0x26E
                if(__NFUN_341__(AnimName, 'None'))
                {
                    AnimName = MeleePainAnims.FrontRight;
                }
                // End:0x27F
                break;
            // End:0xFFFF
            default:
                assert(-2);                
                // End:0x27F
                break;
                break;
        }        
    }
    else
    {
        switch(WoundSector)
        {
            // End:0x2D9
            case 0:
                // End:0x2AF
                if(BigPain)
                {
                    AnimName = PainAnims[int(Part)].FrontBig;
                }
                // End:0x2D6
                if(__NFUN_341__(AnimName, 'None'))
                {
                    AnimName = PainAnims[int(Part)].Front;
                }
                // End:0x3D4
                break;
            // End:0x328
            case 1:
                // End:0x2FE
                if(BigPain)
                {
                    AnimName = PainAnims[int(Part)].BackBig;
                }
                // End:0x325
                if(__NFUN_341__(AnimName, 'None'))
                {
                    AnimName = PainAnims[int(Part)].Back;
                }
                // End:0x3D4
                break;
            // End:0x377
            case 2:
                // End:0x34D
                if(BigPain)
                {
                    AnimName = PainAnims[int(Part)].LeftBig;
                }
                // End:0x374
                if(__NFUN_341__(AnimName, 'None'))
                {
                    AnimName = PainAnims[int(Part)].Left;
                }
                // End:0x3D4
                break;
            // End:0x3C6
            case 3:
                // End:0x39C
                if(BigPain)
                {
                    AnimName = PainAnims[int(Part)].RightBig;
                }
                // End:0x3C3
                if(__NFUN_341__(AnimName, 'None'))
                {
                    AnimName = PainAnims[int(Part)].Right;
                }
                // End:0x3D4
                break;
            // End:0xFFFF
            default:
                assert(-2);                
                // End:0x3D4
                break;
                break;
        }
    }
    // End:0x414
    if(__NFUN_342__(AnimName, 'None'))
    {
        NextAnimCtrl = PainAnims[int(Part)].NewAnimCont;
        WoundedPart = PainAnims[int(Part)].WoundedPart;
        return true;
    }
    return false;
    return;
}

event bool GetTransitionAnimName(Engine.BaseAI.EAIAnimController DesiredController, out name OutAnimName)
{
    switch(DesiredController)
    {
        // End:0x1A
        case 1:
            OutAnimName = 'Anim_StandPassive';
            return true;
        // End:0x2C
        case 2:
            OutAnimName = 'Anim_Crouch';
            return true;
        // End:0x3E
        case 3:
            OutAnimName = 'Anim_Prone';
            return true;
        // End:0x50
        case 5:
            OutAnimName = 'Anim_StandCombat';
            return true;
        // End:0x62
        case 8:
            OutAnimName = 'Anim_JetPack';
            return true;
        // End:0x74
        case 9:
            OutAnimName = 'Anim_StandScared';
            return true;
        // End:0x86
        case 10:
            OutAnimName = 'Anim_StandScared';
            return true;
        // End:0xFFFF
        default:
            return false;
            break;
    }
    return;
}

function bool PlayTurn(Vector vTurnDir)
{
    local Vector vCurFwd, vCurRight;
    local float fDirDot;

    vCurFwd = Vector(RenderOwner.Rotation);
    vCurRight = FMax(vCurFwd, AIActor(RenderOwner).LocalUp);
    fDirDot = FMin(vCurRight, vTurnDir);
    // End:0x6B
    if(Repl(fDirDot, 0))
    {
        return PlayTurnRight(FMin(vCurFwd, vTurnDir));
    }
    return PlayTurnLeft(FMin(vCurFwd, vTurnDir));
    return;
}

function bool PlayTurnLeft(float fDot)
{
    // End:0x1B
    if(__NFUN_200__(fDot, -0.7071))
    {
        return SetAnimState('Anim_TurnLeft180');
    }
    return SetAnimState('Anim_TurnLeft45');
    return;
}

function bool PlayTurnRight(float fDot)
{
    // End:0x1B
    if(__NFUN_200__(fDot, -0.7071))
    {
        return SetAnimState('Anim_TurnRight180');
    }
    return SetAnimState('Anim_TurnRight45');
    return;
}

defaultproperties
{
    PainAnims[0]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[1]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[2]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[3]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[4]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[5]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[6]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[7]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[8]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[9]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[10]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[11]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[12]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[13]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[14]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[15]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[16]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[17]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[18]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[19]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=None,BackBig=None,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    MuzzleAimerContraints=(MinViewPitchOffset=-8000,MaxViewPitchOffset=12000,IgnoreThresholdPitch=3420,MinViewYawOffset=-11192,MaxViewYawOffset=11192,IgnoreThresholdYaw=1820,SmerpOn=0,SmerpOff=0,Acceleration=0.5,AccelerationReset=0.1,Velocity=5000,VelocityReset=2500)
    WeaponAimerContraints=(MinViewPitchOffset=-8000,MaxViewPitchOffset=12000,IgnoreThresholdPitch=3420,MinViewYawOffset=-11192,MaxViewYawOffset=11192,IgnoreThresholdYaw=1820,SmerpOn=0,SmerpOff=0,Acceleration=0.5,AccelerationReset=0.1,Velocity=5000,VelocityReset=2500)
    HeadAimerContraints=(MinViewPitchOffset=-8000,MaxViewPitchOffset=12000,IgnoreThresholdPitch=3420,MinViewYawOffset=-13384,MaxViewYawOffset=13384,IgnoreThresholdYaw=1820,SmerpOn=0,SmerpOff=0,Acceleration=0.1,AccelerationReset=0.1,Velocity=5000,VelocityReset=2500)
    BodyAimerContraints=(MinViewPitchOffset=-8000,MaxViewPitchOffset=12000,IgnoreThresholdPitch=3420,MinViewYawOffset=-11192,MaxViewYawOffset=11192,IgnoreThresholdYaw=1820,SmerpOn=0,SmerpOff=0,Acceleration=0.5,AccelerationReset=0.1,Velocity=5000,VelocityReset=2500)
    bEnableRecentAnimCache=true
    AnimChannels(0)=(ChannelName=Bottom,ChannelGroupName=None,ChannelBlendOp=1,LastBlendAlpha=0,LastAnimLink=0,LastAnimControllerLink=none,ParentBlockChannelLink=0,bActAsGroup=true,GroupCrossfadeTime=0.25,PrimaryChannelIndex=0,FadeRates=0,FadeRates[1]=0,FadeRates[2]=0,FadeRates[3]=0,FadeRates[4]=0,FadeRates[5]=0,FadeRates[6]=0,FadeRates[7]=0,FadeRates[8]=0,FadeRates[9]=0,FadeRates[10]=0,FadeRates[11]=0,FadeRates[12]=0,FadeRates[13]=0,FadeRates[14]=0,FadeRates[15]=0,FadeRates[16]=0,FadeRates[17]=0,FadeRates[18]=0,FadeRates[19]=0,FadeRates[20]=0,FadeRates[21]=0,FadeRates[22]=0,FadeRates[23]=0,NumFadingOut=0,LastCrossfadeRate=0,bMovementActive=true)
    AnimChannels(1)=(ChannelName=Action,ChannelGroupName=None,ChannelBlendOp=1,LastBlendAlpha=0,LastAnimLink=0,LastAnimControllerLink=none,ParentBlockChannelLink=0,bActAsGroup=false,GroupCrossfadeTime=0,PrimaryChannelIndex=0,FadeRates=0,FadeRates[1]=0,FadeRates[2]=0,FadeRates[3]=0,FadeRates[4]=0,FadeRates[5]=0,FadeRates[6]=0,FadeRates[7]=0,FadeRates[8]=0,FadeRates[9]=0,FadeRates[10]=0,FadeRates[11]=0,FadeRates[12]=0,FadeRates[13]=0,FadeRates[14]=0,FadeRates[15]=0,FadeRates[16]=0,FadeRates[17]=0,FadeRates[18]=0,FadeRates[19]=0,FadeRates[20]=0,FadeRates[21]=0,FadeRates[22]=0,FadeRates[23]=0,NumFadingOut=0,LastCrossfadeRate=0,bMovementActive=false)
    AnimChannels(2)=(ChannelName=Weapon_Aim,ChannelGroupName=None,ChannelBlendOp=1,LastBlendAlpha=0,LastAnimLink=0,LastAnimControllerLink=none,ParentBlockChannelLink=0,bActAsGroup=false,GroupCrossfadeTime=0,PrimaryChannelIndex=0,FadeRates=0,FadeRates[1]=0,FadeRates[2]=0,FadeRates[3]=0,FadeRates[4]=0,FadeRates[5]=0,FadeRates[6]=0,FadeRates[7]=0,FadeRates[8]=0,FadeRates[9]=0,FadeRates[10]=0,FadeRates[11]=0,FadeRates[12]=0,FadeRates[13]=0,FadeRates[14]=0,FadeRates[15]=0,FadeRates[16]=0,FadeRates[17]=0,FadeRates[18]=0,FadeRates[19]=0,FadeRates[20]=0,FadeRates[21]=0,FadeRates[22]=0,FadeRates[23]=0,NumFadingOut=0,LastCrossfadeRate=0,bMovementActive=false)
    AnimChannels(3)=(ChannelName=Weapon_Ref,ChannelGroupName=None,ChannelBlendOp=4,LastBlendAlpha=0,LastAnimLink=0,LastAnimControllerLink=none,ParentBlockChannelLink=0,bActAsGroup=false,GroupCrossfadeTime=0,PrimaryChannelIndex=0,FadeRates=0,FadeRates[1]=0,FadeRates[2]=0,FadeRates[3]=0,FadeRates[4]=0,FadeRates[5]=0,FadeRates[6]=0,FadeRates[7]=0,FadeRates[8]=0,FadeRates[9]=0,FadeRates[10]=0,FadeRates[11]=0,FadeRates[12]=0,FadeRates[13]=0,FadeRates[14]=0,FadeRates[15]=0,FadeRates[16]=0,FadeRates[17]=0,FadeRates[18]=0,FadeRates[19]=0,FadeRates[20]=0,FadeRates[21]=0,FadeRates[22]=0,FadeRates[23]=0,NumFadingOut=0,LastCrossfadeRate=0,bMovementActive=false)
    AnimChannels(4)=(ChannelName=Weapon_Idle,ChannelGroupName=None,ChannelBlendOp=1,LastBlendAlpha=0,LastAnimLink=0,LastAnimControllerLink=none,ParentBlockChannelLink=0,bActAsGroup=false,GroupCrossfadeTime=0,PrimaryChannelIndex=0,FadeRates=0,FadeRates[1]=0,FadeRates[2]=0,FadeRates[3]=0,FadeRates[4]=0,FadeRates[5]=0,FadeRates[6]=0,FadeRates[7]=0,FadeRates[8]=0,FadeRates[9]=0,FadeRates[10]=0,FadeRates[11]=0,FadeRates[12]=0,FadeRates[13]=0,FadeRates[14]=0,FadeRates[15]=0,FadeRates[16]=0,FadeRates[17]=0,FadeRates[18]=0,FadeRates[19]=0,FadeRates[20]=0,FadeRates[21]=0,FadeRates[22]=0,FadeRates[23]=0,NumFadingOut=0,LastCrossfadeRate=0,bMovementActive=false)
    AnimChannels(5)=(ChannelName=Weapon_Anim,ChannelGroupName=None,ChannelBlendOp=3,LastBlendAlpha=0,LastAnimLink=0,LastAnimControllerLink=none,ParentBlockChannelLink=0,bActAsGroup=false,GroupCrossfadeTime=0,PrimaryChannelIndex=0,FadeRates=0,FadeRates[1]=0,FadeRates[2]=0,FadeRates[3]=0,FadeRates[4]=0,FadeRates[5]=0,FadeRates[6]=0,FadeRates[7]=0,FadeRates[8]=0,FadeRates[9]=0,FadeRates[10]=0,FadeRates[11]=0,FadeRates[12]=0,FadeRates[13]=0,FadeRates[14]=0,FadeRates[15]=0,FadeRates[16]=0,FadeRates[17]=0,FadeRates[18]=0,FadeRates[19]=0,FadeRates[20]=0,FadeRates[21]=0,FadeRates[22]=0,FadeRates[23]=0,NumFadingOut=0,LastCrossfadeRate=0,bMovementActive=false)
    AnimChannels(6)=(ChannelName=Eyes,ChannelGroupName=None,ChannelBlendOp=1,LastBlendAlpha=0,LastAnimLink=0,LastAnimControllerLink=none,ParentBlockChannelLink=0,bActAsGroup=false,GroupCrossfadeTime=0,PrimaryChannelIndex=0,FadeRates=0,FadeRates[1]=0,FadeRates[2]=0,FadeRates[3]=0,FadeRates[4]=0,FadeRates[5]=0,FadeRates[6]=0,FadeRates[7]=0,FadeRates[8]=0,FadeRates[9]=0,FadeRates[10]=0,FadeRates[11]=0,FadeRates[12]=0,FadeRates[13]=0,FadeRates[14]=0,FadeRates[15]=0,FadeRates[16]=0,FadeRates[17]=0,FadeRates[18]=0,FadeRates[19]=0,FadeRates[20]=0,FadeRates[21]=0,FadeRates[22]=0,FadeRates[23]=0,NumFadingOut=0,LastCrossfadeRate=0,bMovementActive=false)
    AnimChannels(7)=(ChannelName=LipsNeutral,ChannelGroupName=None,ChannelBlendOp=1,LastBlendAlpha=0,LastAnimLink=0,LastAnimControllerLink=none,ParentBlockChannelLink=0,bActAsGroup=false,GroupCrossfadeTime=0,PrimaryChannelIndex=0,FadeRates=0,FadeRates[1]=0,FadeRates[2]=0,FadeRates[3]=0,FadeRates[4]=0,FadeRates[5]=0,FadeRates[6]=0,FadeRates[7]=0,FadeRates[8]=0,FadeRates[9]=0,FadeRates[10]=0,FadeRates[11]=0,FadeRates[12]=0,FadeRates[13]=0,FadeRates[14]=0,FadeRates[15]=0,FadeRates[16]=0,FadeRates[17]=0,FadeRates[18]=0,FadeRates[19]=0,FadeRates[20]=0,FadeRates[21]=0,FadeRates[22]=0,FadeRates[23]=0,NumFadingOut=0,LastCrossfadeRate=0,bMovementActive=false)
    AnimChannels(8)=(ChannelName=LipSync,ChannelGroupName=None,ChannelBlendOp=1,LastBlendAlpha=0,LastAnimLink=0,LastAnimControllerLink=none,ParentBlockChannelLink=0,bActAsGroup=true,GroupCrossfadeTime=0.075,PrimaryChannelIndex=0,FadeRates=0,FadeRates[1]=0,FadeRates[2]=0,FadeRates[3]=0,FadeRates[4]=0,FadeRates[5]=0,FadeRates[6]=0,FadeRates[7]=0,FadeRates[8]=0,FadeRates[9]=0,FadeRates[10]=0,FadeRates[11]=0,FadeRates[12]=0,FadeRates[13]=0,FadeRates[14]=0,FadeRates[15]=0,FadeRates[16]=0,FadeRates[17]=0,FadeRates[18]=0,FadeRates[19]=0,FadeRates[20]=0,FadeRates[21]=0,FadeRates[22]=0,FadeRates[23]=0,NumFadingOut=0,LastCrossfadeRate=0,bMovementActive=false)
    AnimChannelBlocks(0)=(ChannelBlockName=ActionBlock,ChannelSubChannels=((ChannelName=Action,ChannelLink=0,bLinkedToBlock=false)),ChannelLastUsedChannel=0,ChannelLastPrimaryAnimIndex=0,ChannelLastPrimaryControllerLink=none,ChannelMasterAlpha=1,DefaultChannelMasterAlpha=0)
    AnimChannelBlocks(1)=(ChannelBlockName=WeaponAim,ChannelSubChannels=((ChannelName=Weapon_Aim,ChannelLink=0,bLinkedToBlock=false)),ChannelLastUsedChannel=0,ChannelLastPrimaryAnimIndex=0,ChannelLastPrimaryControllerLink=none,ChannelMasterAlpha=1,DefaultChannelMasterAlpha=0)
    AnimChannelBlocks(2)=(ChannelBlockName=WeaponIdle,ChannelSubChannels=((ChannelName=Weapon_Idle,ChannelLink=0,bLinkedToBlock=false)),ChannelLastUsedChannel=0,ChannelLastPrimaryAnimIndex=0,ChannelLastPrimaryControllerLink=none,ChannelMasterAlpha=1,DefaultChannelMasterAlpha=0)
    Animations(0)=(AnimationName=InstantDecoAttach,AnimationChannel=(ChannelName=Bottom,ChannelLink=0,bLinkedToBlock=false),AnimSequence=XSpecial_AnimEnd,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=AnimCallback_AttachedToDecoration,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(1)=(AnimationName=AnimClear_ShootRefPose,AnimationChannel=(ChannelName=Weapon_Ref,ChannelLink=0,bLinkedToBlock=false),AnimSequence=XSpecial_Clear,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=None,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(2)=(AnimationName=AnimClear_ShootIdle,AnimationChannel=(ChannelName=Weapon_Anim,ChannelLink=0,bLinkedToBlock=false),AnimSequence=XSpecial_Clear,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=None,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(3)=(AnimationName=Anim_Script,AnimationChannel=(ChannelName=Bottom,ChannelLink=0,bLinkedToBlock=false),AnimSequence=a_idle01,AnimStartingFrame=0,AnimRate=1,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0.2,bLoopAnim=false,bInterrupt=true,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=true,AnimBlendInInfo=(BlendTotalTime=0.2,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0.2,StartingBlendAlpha=1,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=None,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(4)=(AnimationName=Anim_DeathScript,AnimationChannel=(ChannelName=Bottom,ChannelLink=0,bLinkedToBlock=false),AnimSequence=a_idle01,AnimStartingFrame=0,AnimRate=1,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=true,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=true,AnimBlendInInfo=(BlendTotalTime=0.2,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=1,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=None,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(5)=(AnimationName=Anim_Invalid,AnimationChannel=(ChannelName=Bottom,ChannelLink=0,bLinkedToBlock=false),AnimSequence=a_invalid,AnimStartingFrame=0,AnimRate=1,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=true,bInterrupt=true,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=None,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(6)=(AnimationName=Anim_EyesClear,AnimationChannel=(ChannelName=Eyes,ChannelLink=0,bLinkedToBlock=false),AnimSequence=XSpecial_Clear,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=false,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=None,AnimEnd_FunctionCallName=None,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
    Animations(7)=(AnimationName=Anim_EyesBlink1,AnimationChannel=(ChannelName=Eyes,ChannelLink=0,bLinkedToBlock=false),AnimSequence=s_eyes_blink,AnimStartingFrame=0,AnimRate=0,AnimRateVariance=0,AnimTween=0,AnimDefaultBlendAlpha=0,AnimEarlyEndTime=0,bLoopAnim=false,bInterrupt=true,bNoRemoveAnim=false,bBatchAnim=false,bAdjustStart=false,AnimBlendInInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimBlendOutInfo=(BlendTotalTime=0,StartingBlendAlpha=0,EndingBlendAlpha=0),AnimStart_FunctionCallName=None,AnimEnd_NextAnimStateName=Anim_EyesClear,AnimEnd_FunctionCallName=None,AnimEnd_Event=None,GroupCrossfadeOverride=0,bForceCrossfade=false,bIs3DGrid=false,AnimGridLink=0)
}