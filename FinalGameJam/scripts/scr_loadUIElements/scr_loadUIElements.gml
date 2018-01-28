//loads all of the UI elements into place

//cursor
scr_cursorController();

//build buttons
instance_create_layer(512,880,"UI",obj_greenHackDrone);
instance_create_layer(512,880,"UI",obj_greenDroneTower);
instance_create_layer(512,880,"UI",obj_greenMissleTower);
instance_create_layer(512,880,"UI",obj_greenShotgunDrone);
instance_create_layer(512,880,"UI",obj_greenEMPDrone);
instance_create_layer(512,880,"UI",obj_greenHarvester);

instance_create_layer(1310,880,"UI",obj_orangeAutoCannon);
instance_create_layer(1310,880,"UI",obj_orangeHeavyCannon);
instance_create_layer(1310,880,"UI",obj_orangeRailGun);
instance_create_layer(1310,880,"UI",obj_orangeHarvestStatus01);
instance_create_layer(1310,880,"UI",obj_orangeHarvestStatus02);
instance_create_layer(1310,880,"UI",obj_orangeHarvestStatus03);

//base bottom frames
instance_create_layer(8,880,"UI",obj_baseLeftPlate);
instance_create_layer(1415,880,"UI",obj_baseRightPlate);
instance_create_layer(515,880,"UI",obj_bottomYellowPlate);
instance_create_layer(8,880,"UI",obj_baseBottomPannel);




