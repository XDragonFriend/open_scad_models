// Creates a ring

module ring(height, radius, radial_width) {
  difference() {
    cylinder(h = height, r = radius + radial_width / 2);
    translate([0, 0, -1])
      cylinder(h = height + 2, r = radius - radial_width / 2);
  }
}