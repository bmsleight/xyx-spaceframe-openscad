$fn=60;

d_square=25;
d_thickness=2;
d_length=1000;
d_hole_r=6.5/2;
d_hole_l=50;


module aluminium_square(sqaure=d_square, thickness=d_thickness, length=d_length,)
{
  color("Grey") difference() 
  {
    cube([sqaure, sqaure, length], center=true);
    cube([sqaure-thickness, sqaure-thickness, length+100], center=true);
  }

}

module aluminium_square_x(square=d_square, thickness=d_thickness, length=d_length,)
{
    rotate([0,90,0]) aluminium_square(square=square, thickness=thickness, length=	length);
}

module aluminium_square_y(square=d_square, thickness=d_thickness, length=d_length)
{
    rotate([90,0,0]) aluminium_square(square=square, thickness=thickness, length=length);
}

module aluminium_square_z(square=d_square, thickness=d_thickness, length=d_length,)
{
    rotate([0,0,0]) aluminium_square(sqaure=square, thickness=thickness, length=length);
}


module hole(hole_r=d_hole_r, hole_l=d_hole_l, t_x=0, t_y=0, t_z=0)
{
  translate([t_x, t_y, t_z])  cylinder(h=hole_l,r=hole_r, center=true);
}

module hole_x(hole_r=d_hole_r, hole_l=d_hole_l, t_x=0, t_y=0, t_z=0)
{
    rotate([0,90,0]) hole(hole_r=hole_r, hole_l=hole_l, t_x=t_x, t_y=t_y, t_z=t_z);
}

module hole_y(hole_r=d_hole_r, hole_l=d_hole_l, t_x=0, t_y=0, t_z=0)
{
    rotate([90,0,0]) hole(hole_r=hole_r, hole_l=hole_l, t_x=t_x, t_y=t_y, t_z=t_z);
}

module hole_z(hole_r=d_hole_r, hole_l=d_hole_l, t_x=0, t_y=0, t_z=0)
{
    rotate([0,0,0]) hole(hole_r=hole_r, hole_l=hole_l, t_x=t_x, t_y=t_y, t_z=t_z);
}

