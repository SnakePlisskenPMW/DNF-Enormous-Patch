/*******************************************************************************
 * ScriptMethod_SetEnemyMustBeSighted generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ScriptMethod_SetEnemyMustBeSighted extends ScriptMethod
    native
    exportstructs
    hidecategories(Object);

cpptext
{
// Stripped
}

var() noexport bool MustBeSighted "Should the enemy be sighted?";
var() noexport bool ClearTarget "Should any current target be cleared?";

event string GetMethodString()
{
    return __NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__("SetEnemyMustBeSighted (", string(MustBeSighted)), ", "), string(ClearTarget)), ")");
    return;
}

defaultproperties
{
    MustBeSighted=true
    ClearTarget=true
}