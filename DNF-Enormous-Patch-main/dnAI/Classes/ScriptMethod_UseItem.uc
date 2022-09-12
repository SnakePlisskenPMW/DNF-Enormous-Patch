/*******************************************************************************
 * ScriptMethod_UseItem generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ScriptMethod_UseItem extends ScriptMethod
    native
    exportstructs
    hidecategories(Object);

cpptext
{
// Stripped
}

var() noexport deprecated name TargetItemTag "Tag of the useable item.";
var() noexport deprecated name InputDispatcherTag "Tag of the input dispatcher to use.";
var() noexport deprecated name AttachedEvent "Event to fire when the AI has fully attached to the item.";
var() noexport bool ForceAttach "True if you want the attach to go down the ForcedAttach path.";
var() noexport bool AllowProceduralAim "True if you want to allow procedural aiming while using the item.";

event string GetMethodString()
{
    return __NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__("UseItem (", string(TargetItemTag)), ", "), string(InputDispatcherTag)), ", "), string(AttachedEvent)), ", "), string(ForceAttach)), ")");
    return;
}
