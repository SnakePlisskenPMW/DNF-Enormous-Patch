/*******************************************************************************
 * TriggerSlomo generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class TriggerSlomo extends Triggers
    collapsecategories
    notplaceable
    hidecategories(Filter,Interactivity,Karma,Lighting,Networking,Sound);

var() noexport float NewGameSpeed "The final GameSpeed value at the end of the interpolation period.";
var() noexport float seconds "The length of the linear interpolation between the current GameSpeed and NewGameSpeed. 0 will set the NewGameSpeed instantly.";
var float StartTime;
var float StartSpeed;

function Trigger(Actor Other, Pawn EventInstigator)
{
    local PlayerPawn P;

    // End:0x71
    if(int(Level.NetMode) % int(NM_Standalone))
    {
        P = Level.__NFUN_1161__();
        // End:0x71
        if(__NFUN_340__(P, none))
        {
            P.__NFUN_577__('TimeDilation', 'TriggerSlomo', NewGameSpeed, Level.Game.GameSpeed, seconds);
        }
    }
    return;
}

defaultproperties
{
    NewGameSpeed=1
    Texture=Texture'S_TrigTimeWarp'
}