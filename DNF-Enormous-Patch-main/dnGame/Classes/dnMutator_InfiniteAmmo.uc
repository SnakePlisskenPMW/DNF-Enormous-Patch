/*******************************************************************************
 * dnMutator_InfiniteAmmo generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnMutator_InfiniteAmmo extends Mutator
    collapsecategories
    hidecategories(movement,Collision,Lighting,LightColor);

function ModifyPlayer(Pawn Other)
{
    DukeMultiPlayer(Other).bInfiniteAmmo = true;
    DukeMultiPlayer(Other).SetClientInfiniteAmmo();
    super.ModifyPlayer(Other);
    return;
}

defaultproperties
{
    MutatorName="<?int?dnGame.dnMutator_InfiniteAmmo.MutatorName?>"
}