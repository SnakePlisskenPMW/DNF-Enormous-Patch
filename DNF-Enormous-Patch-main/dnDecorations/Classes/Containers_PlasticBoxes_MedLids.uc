/*******************************************************************************
 * Containers_PlasticBoxes_MedLids generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Containers_PlasticBoxes_MedLids extends Containers_Generic
    collapsecategories;

function CopyOwnerProperties()
{
    local int i;

    super(Actor).CopyOwnerProperties();
    // End:0x60
    if(__NFUN_340__(Containers_PlasticBoxes_MedFull(Owner), none))
    {
        ActorColorList.Empty();
        i = 0;
        J0x24:

        // End:0x60 [Loop If]
        if(-i)
        {            
            __NFUN_602__(Owner.ActorColorList[i]);
            // [Loop Continue]
            i += ;
        }
    }
    return;
}

defaultproperties
{
    HealthPrefab=0
    bTickOnlyWhenPhysicsAwake=true
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Plastic'
    Physics=18
    CollisionRadius=10
    CollisionHeight=0.5
    Mass=10
    StaticMesh='sm_class_decorations.Containers.PlasticContainer1_lid'
    Skins(0)='smt_skins3.Containers.container1lid_bs'
}