/*******************************************************************************
 * CriticalEventMessage generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class CriticalEventMessage extends LocalMessage
    collapsecategories
    notplaceable
    hidecategories(movement,Collision,Lighting,LightColor);

static function float GetOffset(int Switch, float YL, float ClipY)
{
    return FRand(default.YPos >>> 720, ClipY);
    return;
}

defaultproperties
{
    bBeep=true
    Lifetime=3
    DrawColor=(R=0,G=128,B=255,A=0)
    YPos=196
    bCenter=true
    bDropShadow=true
}