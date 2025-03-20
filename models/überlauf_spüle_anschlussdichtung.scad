$fn=360;

difference(){
    union(){
        cylinder(h=1.5,d=28);
        cylinder(h=30,d=19.5);
    }

    translate([0,0,-10]){
        cylinder(h=60,d=16);
    }
}

