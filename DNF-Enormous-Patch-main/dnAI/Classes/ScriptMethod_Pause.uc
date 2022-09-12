/*******************************************************************************
 * ScriptMethod_Pause generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ScriptMethod_Pause extends ScriptMethod
    native
    exportstructs
    hidecategories(Object);

cpptext
{
// Stripped
}

var() noexport float MinPauseTime "Minimum time to pause for?";
var() noexport float RndPauseTime "Random factor of this gets added onto MinPauseTime.";

event string GetMethodString()
{
    return __NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__("Pause (", string(MinPauseTime)), " + Rnd ("), string(RndPauseTime)), "))");
    return;
}

defaultproperties
{
    MinPauseTime=1
    Latent=true
}