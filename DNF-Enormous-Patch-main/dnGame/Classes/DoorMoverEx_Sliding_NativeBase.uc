/*******************************************************************************
 * DoorMoverEx_Sliding_NativeBase generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DoorMoverEx_Sliding_NativeBase extends DoorMoverEx
    native
    collapsecategories
    hidecategories(Brush,Networking,LightColor,HeatVision,Hackflags,Filter);

cpptext
{
// Stripped
}

enum EDoorMoverSlideDirEx
{
    DSDEX_Left,
    DSDEX_Right,
    DSDEX_Custom
};

var() noexport DoorMoverEx_Sliding_NativeBase.EDoorMoverSlideDirEx SlideDir "Direction to slide, if DSDEX_Custom, uses SlideCustomDir.";
var() noexport Vector SlideCustomDir "Offset to slide when SlideDir == DSDEX_Custom.";
var() noexport float SlideDistance "Amount to slide in whatever direction we are sliding.  Ignored when SlideDir == DSDEX_Custom.";
