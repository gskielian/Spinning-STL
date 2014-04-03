//Spinning-Thingy

module hollow_thingy() {

    module solid_thingy() {


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
      };


      ///this is the coin cell holder
      translate([760,0,10]) {
         cylinder(h=40, r1=50, r2=50);
      };


    };




    difference() {

      solid_thingy();

      //this is the spinning shaft
      translate([-20, 0, 30 ]) {
              rotate([0,90,0]){
                      cylinder(h=1000, r1=15, r2=15);
              }
      };

    }

}

difference() {

  hollow_thingy();

  ///this is the coin cell holder
  translate([760,0,10]) {
     cylinder(h=40, r1=40, r2=40);
  };

}
