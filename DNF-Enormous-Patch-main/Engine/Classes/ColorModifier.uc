/*******************************************************************************
 * ColorModifier generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ColorModifier extends Modifier
    native
    hidecategories(Object,MaterialEx);

var() Color Color;
var() bool RenderTwoSided;
var() bool AlphaBlend;

defaultproperties
{
    Color=(R=255,G=255,B=255,A=255)
    RenderTwoSided=true
    AlphaBlend=true
    bColorModifier=true
}