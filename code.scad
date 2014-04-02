//Spinning-Thingy

//this is right wing
rotate([0,30 ,0]){
	cube([10, 450, 80]);
}


//this is left wing
rotate([0,-30,0]){
	translate([20,-450,-20]){
		cube([10, 450, 80]);
	}
}


//this is the spinning shaft
translate([-20, 0, 30 ]) {
	rotate([0,90,0]){
		cylinder(h=800, r1=20, r2=20);
	}
}

///this is the coin cell holder
translate([760,0,0]) {
   cylinder(h=40, r1=50, r2=50);
}
