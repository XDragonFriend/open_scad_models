include <../modules/objects/ring.scad>

$fn=360;

difference() {
    ring(100, 14.5, 3);
    translate([0,0,-1]) {
       cylinder(12.5,14.5,14.5);
    }
    translate([0,0,90]) {
        ring(100, 15, 2.5);
    }   
}
