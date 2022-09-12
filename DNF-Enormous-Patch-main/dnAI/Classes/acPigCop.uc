/*******************************************************************************
 * acPigCop generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class acPigCop extends AIAnimationControllerEx;

defaultproperties
{
    PainAnims[0]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=Anim_PainFrontBig,BackBig=Anim_PainBackBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[1]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=Anim_PainFrontHeadBig,BackBig=Anim_PainBackBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[2]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=Anim_PainFrontHeadBig,BackBig=Anim_PainBackBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[3]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=Anim_PainFrontBig,BackBig=Anim_PainBackBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[4]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=Anim_PainFrontBig,BackBig=Anim_PainBackBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[5]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=Anim_PainFrontCrotchBig,BackBig=Anim_PainBackBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[6]=(Front=Anim_PainLeft,Back=Anim_PainBackLeft,Left=None,Right=None,FrontBig=Anim_PainFrontLeftBig,BackBig=Anim_PainBackLeftBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[7]=(Front=Anim_PainRight,Back=Anim_PainBackRight,Left=None,Right=None,FrontBig=Anim_PainFrontRightBig,BackBig=Anim_PainBackRightBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[8]=(Front=Anim_PainLeft,Back=Anim_PainBackLeft,Left=None,Right=None,FrontBig=Anim_PainFrontLeftBig,BackBig=Anim_PainBackLeftBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[9]=(Front=Anim_PainRight,Back=Anim_PainBackRight,Left=None,Right=None,FrontBig=Anim_PainFrontRightBig,BackBig=Anim_PainBackRightBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[10]=(Front=Anim_PainLeft,Back=Anim_PainBackLeft,Left=None,Right=None,FrontBig=Anim_PainFrontLeftBig,BackBig=Anim_PainBackLeftBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[11]=(Front=Anim_PainRight,Back=Anim_PainBackRight,Left=None,Right=None,FrontBig=Anim_PainFrontRightBig,BackBig=Anim_PainBackRightBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[12]=(Front=Anim_PainLeft,Back=Anim_PainBackLeft,Left=None,Right=None,FrontBig=Anim_PainLowerFrontLeftBig,BackBig=Anim_PainLowerBackLeftBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[13]=(Front=Anim_PainRight,Back=Anim_PainBackRight,Left=None,Right=None,FrontBig=Anim_PainLowerFrontRightBig,BackBig=Anim_PainLowerBackRightBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[14]=(Front=Anim_PainLeft,Back=Anim_PainBackLeft,Left=None,Right=None,FrontBig=Anim_PainLowerFrontLeftBig,BackBig=Anim_PainLowerBackLeftBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[15]=(Front=Anim_PainRight,Back=Anim_PainBackRight,Left=None,Right=None,FrontBig=Anim_PainLowerFrontRightBig,BackBig=Anim_PainLowerBackRightBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[16]=(Front=Anim_PainLeft,Back=Anim_PainBackLeft,Left=None,Right=None,FrontBig=Anim_PainLowerFrontLeftBig,BackBig=Anim_PainLowerBackLeftBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[17]=(Front=Anim_PainRight,Back=Anim_PainBackRight,Left=None,Right=None,FrontBig=Anim_PainLowerFrontRightBig,BackBig=Anim_PainLowerBackRightBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[18]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=Anim_PainFrontBig,BackBig=Anim_PainBackBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    PainAnims[19]=(Front=Anim_PainFront,Back=Anim_PainBack,Left=None,Right=None,FrontBig=Anim_PainFrontHeadBig,BackBig=Anim_PainBackBig,LeftBig=None,RightBig=None,NewAnimCont=0,WoundedPart=0)
    WeaponAimerContraints=(MinViewPitchOffset=-4000,MaxViewPitchOffset=4000,IgnoreThresholdPitch=4000,MinViewYawOffset=-6000,MaxViewYawOffset=6000,IgnoreThresholdYaw=1820,SmerpOn=0,SmerpOff=0,Acceleration=0.5,AccelerationReset=0.1,Velocity=5000,VelocityReset=2500)
    HeadAimerContraints=(MinViewPitchOffset=0,MaxViewPitchOffset=4000,IgnoreThresholdPitch=3420,MinViewYawOffset=-4000,MaxViewYawOffset=4000,IgnoreThresholdYaw=1820,SmerpOn=0,SmerpOff=0,Acceleration=0.1,AccelerationReset=0.1,Velocity=5000,VelocityReset=2500)
}