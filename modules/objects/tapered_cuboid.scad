// Creates a tapered cuboid

module tapered_cuboid(width, length, height, taper) {
	ho = taper;
	hwidth = width - taper;
	hlength = length - taper;
	polyhedron( points=[
		[ 0,  0, 0],
		[ho, ho, height],
		[hwidth, ho, height],
		[ width,  0, 0],
		[ 0,  length, 0],
		[ho, hlength, height],
		[hwidth, hlength, height],
		[ width,  length, 0] 
	], faces = [
		//side face
		[0, 1, 2],
		[2, 3, 0],
		//side face
		[3, 2, 6],
		[6, 7, 3],
		//side face
		[7, 6, 5],
		[5, 4, 7],
		//side face
		[4, 5, 1],
		[1, 0, 4],
		//top face
		[1, 5, 2],
		[2, 5, 6],
		//bottom face
		[4, 0, 3],
		[7, 4, 3],
	] );
}