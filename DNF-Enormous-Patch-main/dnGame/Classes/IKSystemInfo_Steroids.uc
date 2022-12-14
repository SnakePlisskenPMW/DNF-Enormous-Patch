/*******************************************************************************
 * IKSystemInfo_Steroids generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class IKSystemInfo_Steroids extends IKSystemInfo_Inventory
    collapsecategories;

defaultproperties
{
    IKHierarchy(0)=(BoneName="rightarm",ConstrainY=170,ConstrainZ=170,ConstrainZPitch=0,ConstrainX=170)
    IKHierarchy(1)=(BoneName="rightforearm",ConstrainY=70,ConstrainZ=160,ConstrainZPitch=0,ConstrainX=10)
    IKHierarchy(2)=(BoneName="righthand",ConstrainY=30,ConstrainZ=160,ConstrainZPitch=0,ConstrainX=28)
    MountBoneName="mount_hand_r"
    IKEvents(0)=(EventType=1,EventName="IK_Detach",EventData="")
    IKEvents(1)=(EventType=0,EventName="IK_Attach",EventData="mount_hand_r")
}