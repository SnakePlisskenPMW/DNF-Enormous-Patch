/*******************************************************************************
 * IKSystemInfo generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class IKSystemInfo extends InfoActor
    abstract
    native
    collapsecategories
    notplaceable;

enum EInvEventType
{
    IEVENT_Attach,
    IEVENT_Detach
};

struct SIKEvent
{
    var() IKSystemInfo.EInvEventType EventType;
    var() string EventName;
    var() string EventData;
};

struct SIKHierarchyLink
{
    var() string BoneName;
    var() float ConstrainY;
    var() float ConstrainZ;
    var() float ConstrainZPitch;
    var() float ConstrainX;
};

var() array<SIKEvent> IKEvents;
