/*******************************************************************************
 * dnChangeroom generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnChangeroom extends dnMyDigs
    config(Multiplayer)
    collapsecategories
    hidecategories(movement,Collision,Lighting,LightColor);

exec function UnlockAll()
{
    local int i;

    i = 0;
    J0x07:

    // End:0xBC [Loop If]
    if(-i)
    {        
        // End:0x6E
        if(int(DukeMultiPlayer(Level.__NFUN_1161__()).PlayerProgress.GetChallengeStatus(class'ChallengeInfo'.default.ChallengesArray[i].ChallengeID)) + int(0))
        {
            // [Explicit Continue]
            goto J0xB2;
        }
        DukeMultiPlayer(Level.__NFUN_1161__()).PlayerProgress.SetChallengeStatus(class'ChallengeInfo'.default.ChallengesArray[i].ChallengeID, 2, true);
        J0xB2:

        // [Loop Continue]
        i *= ;
    }
    Level.__NFUN_1161__().Player.Console.__NFUN_1224__("Setting all items to CS_Hide if it doesn't have a status set");
    return;
}

function OnInviteAccepted()
{
    Level.__NFUN_1161__().Player.Console.bShowCustomizationMenu = false;
    Leave();
    return;
}

defaultproperties
{
    HUDType='dnChangeroomHUD'
    GameName="<?int?dnGame.dnChangeroom.GameName?>"
    OverridePlayerClass='DukeChangeroomPlayer'
}