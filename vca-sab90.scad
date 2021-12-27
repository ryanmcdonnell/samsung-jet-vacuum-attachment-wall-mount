use <roundedcube.scad>

$fn = 64;
$fs = 0.1;

// Backplane
difference() {
  translate([0,-60,0])
    roundedcube([8,120,60], radius = 3, apply_to="x");
  translate([-1,-30,30])
    rotate([0,90,0])
      union() {
        translate([0,0,5])
          cylinder(h = 10, d = 10);
        cylinder(h = 10, d = 4);
      }
   translate([-1,30,30])
    rotate([0,90,0])
      union() {
        translate([0,0,5])
          cylinder(h = 10, d = 10);
        cylinder(h = 10, d = 4);
      }
}

// Attachment head opening
difference() {
  translate([33,60,0])
    rotate([90,0,0])
      difference() {
        cylinder(h = 120, d = 66);
        translate([0,0,-5])
          cylinder(h = 130, d = 50);
      }
  translate([8,-65,0])
    cube([70,130,40]);

  // Hose 60mm opening
  translate([38,0,-40])
    union() {
      cylinder(h = 100, d = 60);
      translate([0,-30,0])
        cube([40,60,100]);
    }
}