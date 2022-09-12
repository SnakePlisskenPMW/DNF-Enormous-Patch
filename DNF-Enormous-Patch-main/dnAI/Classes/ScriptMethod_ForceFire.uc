/*******************************************************************************
 * ScriptMethod_ForceFire generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ScriptMethod_ForceFire extends ScriptMethod
    native
    exportstructs
    hidecategories(Object);

cpptext
{
// Stripped
}

var() noexport Engine.Object.EBitModifier ForceFire "If true, we bypass LOS checks and fire anyway.";
var() noexport bool bForceFireImmediately "If true, we immediately try to play our fire animation. Note this does NOT go through the normal weapon path and should be considered a hack for when you need an AI to shoot a single shot at a very specific time.";

event string GetMethodString()
{
    return __NFUN_302__(__NFUN_302__("ForceFire (", string(__NFUN_365__(class'EBitModifier', int(ForceFire)))), ")");
    return;
}