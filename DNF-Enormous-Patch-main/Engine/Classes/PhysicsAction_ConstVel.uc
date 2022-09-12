/*******************************************************************************
 * PhysicsAction_ConstVel generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PhysicsAction_ConstVel extends PhysicsAction
    native
    exportstructs
    hidecategories(Object);

cpptext
{
// Stripped
}

var private bool ConstLinearVel;
var private bool ConstAngularVel;
var private Vector LinearVel;
var private Vector AngularVel;

function Setup(bool SetConstLinearVel, bool SetConstAngularVel, optional Vector NewLinearVel, optional Vector NewAngularVel)
{
    ConstLinearVel = SetConstLinearVel;
    ConstAngularVel = SetConstAngularVel;
    // End:0x2E
    if(ConstLinearVel)
    {
        LinearVel = NewLinearVel;
    }
    // End:0x42
    if(ConstAngularVel)
    {
        AngularVel = NewAngularVel;
    }
    return;
}
