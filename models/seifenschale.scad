include <../modules/objects/perforated_plate.scad>
include <../modules/objects/right_angled_triangle.scad>
include <../modules/objects/tapered_cuboid.scad>

$fn=360;

// Spacers
translate([2,6.7,2.2]) {
    cube([.8,.8,.4]);
}

translate([5.6,6.7,2.2]) {
    cube([.8,.8,.4]);
}

translate([2.0,5.7,2.2]) {
    cube([.8,.8,.4]);
}

translate([5.6,5.7,2.2]) {
    cube([.8,.8,.4]);
}

translate([5.6,2,2.2]) {
    cube([.8,.8,.4]);
}

translate([2.0,2,2.2]) {
    cube([.8,.8,.4]);
}

translate([5.6,10.1,2.2]) {
    cube([.8,.8,.4]);
}

translate([2.0,10.1,2.2]) {
    cube([.8,.8,.4]);
}


// Middle wall
difference() {
    translate([0,6.5,.2]) {
        cube([8.4,.2,2.4]);
    }

    translate([-0.2,6.4,2.7]) {
        rotate([-90,0,0]) {
            right_angled_triangle(2.2,2.8,.4);
        }
    }

    translate([8.6,6.4,2.7]) {
        rotate([-90,0,00]) {
            right_angled_triangle(-2.2,2.8,.4);
        }
    }
}

// Hull
difference() {
    translate([0,0,.2]) {
        tapered_cuboid(8.4, 12.9, 2.6, 2);
    }

    tapered_cuboid(8.4, 12.9, 2.6, 2);
}


// Drip tray
/*
translate([2.15,1.95,2]) {
    perforated_plate([4.5,4.5,.2], .5, .5,[3,3]);
}
*/