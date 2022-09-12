/*******************************************************************************
 * AlienQueen_HurtRadiusSensor generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AlienQueen_HurtRadiusSensor extends KarmaActor
    collapsecategories;

var AlienQueen MyQueen;

event PreBeginPlay()
{
    DrawType = 8;
    super.PreBeginPlay();
    return;
}

event PostBeginPlay()
{
    FindQueen();
    super(Actor).PostBeginPlay();
    return;
}

event FindQueen()
{
    // End:0x14
    foreach __NFUN_747__(class'AlienQueen', MyQueen)
    {
        // End:0x14
        break;        
    }    
    return;
}

event TakeDamage(Pawn Instigator, float Damage, Vector DamageOrigin, Vector DamageDirection, class<DamageType> DamageType, optional name HitBoneName, optional Vector DamageStart)
{
    super.TakeDamage(Instigator, Damage, DamageOrigin, DamageDirection, DamageType, HitBoneName, DamageStart);
    // End:0x3B
    if(__NFUN_339__(MyQueen, none))
    {
        FindQueen();
    }
    MyQueen.NotifyHurtRadiusSensorTakeDamage(self, Instigator, Damage, DamageOrigin, DamageDirection, DamageType, HitBoneName, DamageStart);
    return;
}

defaultproperties
{
    bTraceShootable=false
    bCollisionAssumeValid=true
    bUseCylinderCollision=true
    bBlockKarma=true
    bBlockCamera=false
    bCanExistOutOfWorld=true
    bNoNativeTick=true
    bNoFailMountedMovement=true
    bCollideActors=true
    CollisionRadius=64
    CollisionHeight=64
    TickStyle=0
    Texture='dt_editor.Icons.DumbActor'
    StaticMesh='sm_geo_decorations.CollisionPrimitives.CP_Cube_64'
    Skins(0)='dt_editor.Surface.Climbable_Masking'
}