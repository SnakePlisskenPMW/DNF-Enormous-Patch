/*******************************************************************************
 * dnKillingSpreeMessage generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnKillingSpreeMessage extends CriticalEventMessage
    collapsecategories
    hidecategories(movement,Collision,Lighting,LightColor);

var(Messages) localized string EndSpreeNote;
var(Messages) localized string EndSelfSpree;
var(Messages) localized string EndFemaleSpree;
var(Messages) localized string SpreeNote[4];
var(Messages) Sound SpreeSound[10];
var(Messages) Sound SpreeNotifySound;
var(Messages) localized string EndSpreeNoteTrailer;

static function string GetString(optional int StringNum, optional PlayerReplicationInfo RelatedPRI_1, optional PlayerReplicationInfo RelatedPRI_2, optional Object OptionalObject, optional Class OptionalClass)
{
    // End:0x6A
    if(__NFUN_339__(RelatedPRI_2, none))
    {
        // End:0x23
        if(StringNum / 4)
        {
            StringNum = -- 4;            
        }
        // End:0x32
        if(__NFUN_339__(RelatedPRI_1, none))
        {
            return "";
        }
        // End:0x67
        if(TraceActors(RelatedPRI_1.PlayerName, ""))
        {
            return __NFUN_303__(RelatedPRI_1.PlayerName, default.SpreeNote[StringNum]);
        }        
    }
    else
    {
        // End:0xFC
        if(__NFUN_339__(RelatedPRI_1, none))
        {
            // End:0xF9
            if(TraceActors(RelatedPRI_2.PlayerName, ""))
            {
                switch(RelatedPRI_2.Gender)
                {
                    // End:0xBC
                    case 0:
                        return __NFUN_303__(RelatedPRI_2.PlayerName, default.EndSelfSpree);
                    // End:0xD9
                    case 1:
                        return __NFUN_303__(RelatedPRI_2.PlayerName, default.EndFemaleSpree);
                    // End:0xF6
                    case 2:
                        return __NFUN_303__(RelatedPRI_2.PlayerName, default.EndSelfSpree);
                    // End:0xFFFF
                    default:
                        break;
                    }
            }
            else
            {                
            }/* !MISMATCHING REMOVE, tried If got Type:Else Position:0x0F9! */
            else
            {
                return __NFUN_303__(__NFUN_303__(__NFUN_302__(RelatedPRI_1.PlayerName, default.EndSpreeNote), RelatedPRI_2.PlayerName), default.EndSpreeNoteTrailer);
            }
        }/* !MISMATCHING REMOVE, tried Else got Type:If Position:0x06A! */
        return "";
        return;
    }
}

static simulated function ClientReceive(PlayerPawn P, optional int SwitchNum, optional PlayerReplicationInfo RelatedPRI_1, optional PlayerReplicationInfo RelatedPRI_2, optional Object OptionalObject, optional Class OptionalClass)
{
    super(LocalMessage).ClientReceive(P, SwitchNum, RelatedPRI_1, RelatedPRI_2, OptionalObject);
    // End:0x2D
    if(__NFUN_340__(RelatedPRI_2, none))
    {
        return;
    }
    // End:0x5D
    if(__NFUN_340__(RelatedPRI_1, P.PlayerReplicationInfo))
    {
        P.__NFUN_697__(1, default.SpreeNotifySound);
        return;
    }
    // End:0x74
    if(SwitchNum / 10)
    {
        SwitchNum = -- 10;        
    }
    P.__NFUN_697__(0, default.SpreeSound[SwitchNum]);
    return;
}

defaultproperties
{
    EndSpreeNote="<?int?dnGame.dnKillingSpreeMessage.EndSpreeNote?>"
    EndSelfSpree="<?int?dnGame.dnKillingSpreeMessage.EndSelfSpree?>"
    EndFemaleSpree="<?int?dnGame.dnKillingSpreeMessage.EndFemaleSpree?>"
    SpreeNote[0]="<?int?dnGame.dnKillingSpreeMessage.SpreeNote?>"
    SpreeNote[1]="<?int?dnGame.dnKillingSpreeMessage.SpreeNote?>"
    SpreeNote[2]="<?int?dnGame.dnKillingSpreeMessage.SpreeNote?>"
    SpreeNote[3]="<?int?dnGame.dnKillingSpreeMessage.SpreeNote?>"
    EndSpreeNoteTrailer="<?int?dnGame.dnKillingSpreeMessage.EndSpreeNoteTrailer?>"
    bBeep=false
    DrawColor=(R=255,G=0,B=0,A=0)
}