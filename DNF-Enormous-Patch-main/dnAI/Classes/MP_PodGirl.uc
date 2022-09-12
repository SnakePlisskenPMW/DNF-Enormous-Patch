/*******************************************************************************
 * MP_PodGirl generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MP_PodGirl extends dnDecoration
    collapsecategories;

event PostBeginPlay()
{
    super.PostBeginPlay();
    AnimationController.SetAnimState('Anim_Idle');
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super.RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1283__('Anim_Idle', AnimationControllerClass, Mesh);
    return;
}

defaultproperties
{
    HealthPrefab=0
    bUseDecoAnim=false
    AnimationControllerClass='acPodGirl_MP'
    bBlockKarma=true
    bBlockPath=true
    bStaticAI=true
    bNoDelete=true
    bDumbMesh=false
    bLowerByCollision=true
    bDirectional=true
    CollisionRadius=35
    VisibleCollidingCenterOffset=(X=0,Y=0,Z=16)
    Mesh='c_characters.podgirl_c'
    RemoteRole=0
}