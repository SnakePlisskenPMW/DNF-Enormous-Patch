/*******************************************************************************
 * Details_Generic_PaperAirplane_A generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Details_Generic_PaperAirplane_A extends Details_Generic_PaperAirplane
    collapsecategories;

defaultproperties
{
    InitialThrust=55
    CenterOfMassOffset=(X=3,Y=0,Z=-0.5)
    begin object name=PA_PaperAirplaneA_Lift class=PhysicsAction_Lift
        CenterOfMassOffset=(X=3,Y=0,Z=-0.5)
        LiftCoeffecient=0.4
        ForwardLinearDrag=0.01
        LinearDrag=5
        AngularDrag=30
    object end
    // Reference: PhysicsAction_Lift'Details_Generic_PaperAirplane_A.PA_PaperAirplaneA_Lift'
    PhysicsActions(0)=PA_PaperAirplaneA_Lift
    StaticMesh='sm_class_decorations.paperairplanes.paperairplane_1'
}