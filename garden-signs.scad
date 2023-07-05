// SPDX-FileCopyrightText: 2023 John Romkey
//
// SPDX-License-Identifier: MIT

// dimensions are in mm
width = 2*25.4;
height = 1*25.4;
thickness = 1;

spike_width = 15;
spike_height = 90;

// adjust scale to make the plant name fit on the sign
scale = 1;
name = "plant";

module rounded_square( width, height, radius_corner ) {
    translate([radius_corner, radius_corner, 0 ] )
	minkowski() {
            square([width - 2 * radius_corner, height - 2 * radius_corner]);
            circle( radius_corner );
        }
}

module sign(name, scale=1) {
  linear_extrude(1)
    rounded_square(width, height, 5);

  translate([2, height/3, thickness])
    linear_extrude(1)
      scale([scale, scale, scale])
        text(name);

  translate([width/2-spike_width/2, 0, 0])
    linear_extrude(thickness)
      polygon(points=[[0, 0], [spike_width, 0], [spike_width/2, -spike_height]]);
}

sign(name, scale);
