// Creates a right angled triangle

module right_angled_triangle(width, length, height) {
    linear_extrude(height)
    polygon(points=[[0, 0], [width, 0], [0, length]]);
}
