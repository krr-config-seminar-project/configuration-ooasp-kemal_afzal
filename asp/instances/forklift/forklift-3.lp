#include "../forklift-config-model.lp".

partial(ooasp_instantiation("v1","c1")).
partial(ooasp_isa("c1","ElectricForklift",("ElectricForklift",1))).
partial(ooasp_associated("c1","Forklift_Battery",("ElectricForklift",1),("Battery",1))).
partial(ooasp_attribute_value("c1","chemistry",("Battery",1),"NiCad")).
