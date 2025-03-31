% Configuration model "v1"
% for configuring fork lifts

ooasp_class("v1", "Forklift").
ooasp_class("v1", "ElectricForklift").
ooasp_class("v1", "ICEForkLift").
ooasp_class("v1", "Battery").

ooasp_subclass("v1", "ElectricForklift", "Forklift").
ooasp_subclass("v1", "ICEForkLift", "Forklift").

ooasp_assoc("v1", "Forklift_Battery", "ElectricForklift", 1, 1, "Battery", 1, 1).

ooasp_attribute("v1","Forklift","range","integer").
ooasp_attribute_minInclusive("v1", "Forklift", "range", 2).
ooasp_attribute_maxInclusive("v1", "Forklift", "range", 8).

ooasp_attribute("v1","Forklift","liftstrength","integer").
ooasp_attribute_minInclusive("v1", "Forklift", "liftstrength", 3).
ooasp_attribute_maxInclusive("v1", "Forklift", "liftstrength", 5).

ooasp_attribute("v1","Battery","chemistry","string").
ooasp_attribute_enum("v1", "Battery", "chemistry", "NiCad").
ooasp_attribute_enum("v1", "Battery", "chemistry", "Li-Ion").
