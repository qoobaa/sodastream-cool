$fn=100;

difference() {
  union() {
    hull() {
      translate([10/2, 25/2, 10/2]) rotate([90, 0, 0]) cylinder(25, 10/2, 10/2);
      translate([75, 0, 20]) cube([30, 25, 0.1], center=true);
    }

    translate([76, 0, 20]) {
      cylinder(1, 42/2, 42/2);
      translate([0, 0, 1]) cylinder(1, 42/2, 37/2);
      translate([0, 0, 2]) cylinder(6, 37/2, 37/2);
      translate([0, 0, 8]) cylinder(1, 37/2, 34/2);
    }
  }

  translate([5, 25, 5]) rotate([90, 0, 0]) cylinder(50, 1.75, 1.75);

  cube([100, 17.5, 12], center=true);

  hull(){
    cube([25, 17.5, 19], center=true);
    cube([35, 17.5, 10], center=true);
  }
}

translate([33, 0, 8]) {
  cube([1.5, 5, 8], center=true);
  cube([5, 1.5, 8], center=true);
}
