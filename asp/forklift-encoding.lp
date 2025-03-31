#include "./ooasp.lp".

% Depending on the type of the battery of an electric
% forklift the range is limited.

% Forklift with combustion engine always have a larger range.

:- ooasp_instantiation("v1", I),
    ooasp_isa(I, "ElectricForklift", F),
    ooasp_associated(I, "Forklift_Battery", F, B),
    ooasp_attribute_value(I, "chemistry", B, "NiCad"),
    ooasp_attribute_value(I, "range", F, R),
    R > 4.

:- ooasp_instantiation("v1", I),
    ooasp_isa(I, "ElectricForklift", F),
    ooasp_associated(I, "Forklift_Battery", F, B),
    ooasp_attribute_value(I, "chemistry", B, "Li-Ion"),
    ooasp_attribute_value(I, "range", F, R),
    R > 6.

:- ooasp_instantiation("v1", I),
    ooasp_isa(I, "ICEForkLift", F),
    ooasp_attribute_value(I, "range", F, R),
    R < 4.

% Diesel engines may not be used indoors.
% Electric forklifts can always be used indoors.

:- ooasp_instantiation("v1", I),
    ooasp_isa(I, "ICEForkLift", F),
    ooasp_attribute_value(I, "indoor", F, "TRUE"),
    ooasp_attribute_value(I, "engine", F, "diesel").

:- ooasp_instantiation("v1", I),
    ooasp_isa(I, "ElectricForklift", F),
    ooasp_attribute_value(I, "indoor", F, "FALSE").
