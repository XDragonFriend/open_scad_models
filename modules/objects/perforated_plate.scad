// Creates a square plate with holes in it

module perforated_plate(size, hole_diameter, distance_to_border, hole_count = [2,2] ) {

	if (hole_count.x == 0 || hole_count.y == 0) {

		cube( size );

	} else {

		difference() {

			cube( size );

			randabstand   = distance_to_border + hole_diameter/2;
			x_lochdistanz = hole_count.x > 1 ? (size.x - 2*randabstand) / (hole_count.x - 1) : 0;
			y_lochdistanz = hole_count.y > 1 ? (size.y - 2*randabstand) / (hole_count.y - 1) : 0;
			x_werte       = hole_count.x > 1 ? 
							[randabstand : x_lochdistanz : size.x - randabstand + 0.1] :
							[size.x / 2];
			y_werte       = hole_count.y > 1 ?
			                [randabstand : y_lochdistanz : size.y - randabstand + 0.1] :
			                [size.y / 2];

			// Bohrlöcher
			for (x = x_werte, y = y_werte)
		    translate( [x, y, -1] )
		    cylinder( d = hole_diameter, h = size.z + 2);

		}

	}
}
