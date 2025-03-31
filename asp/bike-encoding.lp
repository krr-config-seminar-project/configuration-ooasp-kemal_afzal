#include "./ooasp.lp".

% The front and back wheels associated with a frame must be of the
% same size.
%
:- ooasp_instantiation("v1", I),
    ooasp_isa(I, "Frame", F),
    ooasp_associated(I, "Frame_wheel_front", F, WF),
    ooasp_associated(I, "Frame_wheel_back", F, WB),
    ooasp_attribute_value(I, "wheel_size", WF, WFS),
    ooasp_attribute_value(I, "wheel_size", WB, WBS),
    WFS != WBS.

% If child_model is selected for a frame, both wheels associated with
% said frame cannot be larger than 16.
%
:- ooasp_instantiation("v1", I),
    ooasp_isa(I, "Frame", F),
    ooasp_attribute_value(I, "child_model", F, "TRUE"),
    ooasp_associated(I, "Frame_wheel_front", F, WF),
    ooasp_attribute_value(I, "wheel_size", WF, WFS),
    WFS > 16.
		
% If child_model is selected for a frame, the selected gears for said
% frame must be derailleur.
%
:- ooasp_instantiation("v1", I),
    ooasp_isa(I, "Frame", F),
    ooasp_attribute_value(I, "child_model", F, "TRUE"),
    not ooasp_attribute_value(I, "gears", F, "Derailleur").
