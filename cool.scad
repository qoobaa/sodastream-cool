$fn=100;

difference() {
  union() {
    hull() {
      translate([13/2, 23/2, 13/2]) rotate([90, 0, 0]) cylinder(23, 13/2, 13/2);
      translate([25, 0, 13/2]) cube([0.1, 23, 13], center=true);
    }

    hull() {
      translate([25, 0, 13/2]) cube([0.1, 23, 13], center=true);
      translate([50, 0, 16.5]) cube([0.1, 23, 7], center=true);
    }

    hull() {
      translate([50, 0, 16.5]) cube([0.1, 23, 7], center=true);
      translate([90, 0, 20]) cube([0.1, 23, 0.1], center=true);
    }

    translate([78, 0, 20]) {
      cylinder(0.5, 40/2, 40/2);
      translate([0, 0, 0.5]) cylinder(1, 40/2, 37/2);
      translate([0, 0, 1.5]) cylinder(7, 37/2, 37/2);
      translate([0, 0, 1.5 + 7]) cylinder(1, 37/2, 35/2);
    }
  }

  translate([5, 25, 5]) rotate([90, 0, 0]) cylinder(50, 1.75, 1.75);

  cube([100, 17.5, 14], center=true);

  hull(){
    cube([20, 17.5, 20], center=true);
    cube([25, 17.5, 14], center=true);
  }
}

translate([33, 0, 9]) {
  cube([1.5, 5, 8], center=true);
  cube([5, 1.5, 8], center=true);
}
