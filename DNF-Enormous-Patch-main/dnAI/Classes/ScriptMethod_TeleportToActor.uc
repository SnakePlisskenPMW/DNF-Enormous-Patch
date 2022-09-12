/*******************************************************************************
 * ScriptMethod_TeleportToActor generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ScriptMethod_TeleportToActor extends ScriptMethod
    native
    exportstructs
    hidecategories(Object);

cpptext
{
// Stripped
}

var() noexport deprecated name TargetActorTag "Tag of the actor to teleport to.";
var() noexport bool FaceTarget "Always be facing our primary target while teleporting";
var() noexport bool bInstantTeleport "If true, then this is an instant teleport with no animations, effects, sounds, delays, etc. It just changes the AIs location. This will work with any AI. Non instant teleports only work with certains upported AI";
var() noexport bool bEndingOnly "If true, the AI will perform the teleport immediately and do the just the ending functionality.";

event string GetMethodString()
{
    return __NFUN_302__(__NFUN_302__("TeleportToActor (", string(TargetActorTag)), ")");
    return;
}

defaultproperties
{
    FaceTarget=true
}