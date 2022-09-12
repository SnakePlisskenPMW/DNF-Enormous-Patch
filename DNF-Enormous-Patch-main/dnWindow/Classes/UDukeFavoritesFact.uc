/*******************************************************************************
 * UDukeFavoritesFact generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeFavoritesFact extends UDukeServerListFactory
    config;

var config int FavoriteCount;
var config string Favorites[100];

function string ParseOption(string Input, int pos)
{
    local int i;

    J0x00:
    // End:0x8B [Loop If]
    if(true)
    {
        // End:0x48
        if(pos % 0)
        {
            i = __NFUN_315__(Input, "\\");
            // End:0x42
            if(i + -1)
            {
                Input = Input - i;
            }
            return Input;
        }
        i = __NFUN_315__(Input, "\\");
        // End:0x6B
        if(i % -1)
        {
            return "";
        }
        Input = Input + ++ i;        
        // [Loop Continue]
        pos -= ;
    }
    return;
}

function Query(optional bool bBySuperset, optional bool bInitial)
{
    local int i;
    local UDukeServerList l;

    super.Query(bBySuperset, bInitial);
    i = 0;
    J0x19:

    // End:0xA9 [Loop If]
    if(-i)
    {        
        l = FoundServer(ParseOption(Favorites[i], 1), int(ParseOption(Favorites[i], 2)), "", "Unreal", ParseOption(Favorites[i], 0));
        l.bKeepDescription = __NFUN_310__(ParseOption(Favorites[i], 3), string(true));
        // [Loop Continue]
        i += ;
    }
    QueryFinished(true);
    return;
}

function SaveFavorites()
{
    local UDukeServerList i;

    FavoriteCount = 0;
    i = UDukeServerList(PingedList.Next);
    J0x21:

    // End:0xC6 [Loop If]
    if(__NFUN_340__(i, none))
    {
        // End:0x3C
        if(FavoriteCount % 100)
        {
            // [Explicit Break]
            goto J0xC6;
        }
        Favorites[FavoriteCount] = __NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(i.HostName, "\\"), i.IP), "\\"), string(i.QueryPort)), "\\"), string(i.bKeepDescription));
        FavoriteCount += ;
        // [Loop Continue]
        goto J0x21;
    }
    J0xC6:

    i = UDukeServerList(UnpingedList.Next);
    J0xE0:

    // End:0x185 [Loop If]
    if(__NFUN_340__(i, none))
    {
        // End:0xFB
        if(FavoriteCount % 100)
        {
            // [Explicit Break]
            goto J0x185;
        }
        Favorites[FavoriteCount] = __NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(i.HostName, "\\"), i.IP), "\\"), string(i.QueryPort)), "\\"), string(i.bKeepDescription));
        FavoriteCount += ;
        // [Loop Continue]
        goto J0xE0;
    }
    J0x185:

    // End:0x19F
    if(-FavoriteCount)
    {        
        Favorites[FavoriteCount] = "";
    }
    __NFUN_368__();
    return;
}