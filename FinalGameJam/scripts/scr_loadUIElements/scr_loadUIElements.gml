//loads all of the UI elements into place

//cursor
scr_cursorController();

//green buttons
instance_create_layer(512,880,"UI",obj_greenHackDrone);
instance_create_layer(610,880,"UI",obj_greenDroneTower);
instance_create_layer(710,880,"UI",obj_greenMissleTower);
instance_create_layer(512,980,"UI",obj_greenShotgunDrone);
instance_create_layer(610,980,"UI",obj_greenEMPDrone);
instance_create_layer(710,980,"UI",obj_greenHarvester);

//orange buttons
instance_create_layer(1310,880,"UI",obj_orangeAutoCannon);
instance_create_layer(1210,880,"UI",obj_orangeHeavyCannon);
instance_create_layer(1110,880,"UI",obj_orangeRailGun);
instance_create_layer(1110,980,"UI",obj_orangeHarvestStatus01);
instance_create_layer(1210,980,"UI",obj_orangeHarvestStatus02);
instance_create_layer(1310,980,"UI",obj_orangeHarvestStatus03);

//red toggle buttons + Drone Deploy Button
instance_create_layer(810,880,"UI",obj_redToggleTransAgro);
instance_create_layer(910,880,"UI",obj_redDroneDeploy);
instance_create_layer(1010,880,"UI",obj_redToggleColonyAgro);


//base bottom frames
instance_create_layer(8,880,"UI",obj_baseLeftPlate);
instance_create_layer(1415,880,"UI",obj_baseRightPlate);
instance_create_layer(8,880,"UI",obj_baseBottomPannel);




