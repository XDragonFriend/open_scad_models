// feet for a gardentable

include <../modules/objects/ring.scad>

$fn=360;

difference() {
cylinder(20, d=50);
    translate([0,0,-5]) {
        cylinder(d=16, h=15, $fn=6);
        ring(6, 15,  1);
        ring(6, 20,  1);
    }
    cylinder(30, d=3);
}
