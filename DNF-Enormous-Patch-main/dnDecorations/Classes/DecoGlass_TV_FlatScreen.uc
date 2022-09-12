/*******************************************************************************
 * DecoGlass_TV_FlatScreen generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DecoGlass_TV_FlatScreen extends dnBreakableGlass_DecoGlass
    collapsecategories;

var Electronics_Generic_TV TVActor;

event GlassCracked()
{
    super(dnBreakableGlass).GlassCracked();
    DecoGlassDamaged();
    return;
}

event GlassShattered()
{
    super(dnBreakableGlass).GlassShattered();
    DecoGlassDamaged();
    return;
}

final function DecoGlassDamaged()
{
    // End:0x1C
    if(__NFUN_340__(TVActor, none))
    {
        TVActor.GlassDamaged();
    }
    TVActor = none;
    return;
}

final function CrackSelf()
{
    TVActor = none;
    __NFUN_1080__(Location);
    return;
}

defaultproperties
{
    ParticleSize=6
    bStaticEdgePieces=false
    DrawScale3D=(X=43,Y=27,Z=1)
    EffectsMaterial='dnMaterial.dnMaterial_Glass'
}