
include <base_structures.scad>;

l_FR_1a=1500;
l_FR_1b=1500;
l_FR_2a=210;
l_FR_2b=260;
l_FR_2c=210;

module FR_1a()
{
  color("green") difference()
  {
    aluminium_square_y(length=l_FR_1a );

    // Set starting point for holes to be top of bar
    translate([0,l_FR_1a /2 ,0]) 
    {
      hole_x(t_y=-12.5);
      hole_x(t_y=-47.5);
      hole_x(t_y=-411.5);
      hole_z(t_y=-436.5);
      hole_x(t_y=-(l_FR_1a -635));
      hole_z(t_y=-(l_FR_1a -610));
      hole_x(t_y=-(l_FR_1a -585));
      hole_x(t_y=-(l_FR_1a -97.5));
      hole_x(t_y=-(l_FR_1a -62.5));
      hole_x(t_y=-(l_FR_1a -37.5));
      hole_z(t_y=-(l_FR_1a -12.5));
    }
  }
}

module FR_1b()
{
  color("green") difference()
  {
    aluminium_square_y(length=l_FR_1b);

    // Set starting point for holes to be top of bar
    translate([0,l_FR_1b/2 ,0]) 
    {
      hole_x(t_y=-12.5);
      hole_x(t_y=-47.5);
      hole_x(t_y=-411.5);
      hole_z(t_y=-436.5);
      hole_z(t_y=-(l_FR_1b -610));
      hole_x(t_y=-(l_FR_1b -97.5));
      hole_x(t_y=-(l_FR_1b -62.5));
      hole_x(t_y=-(l_FR_1b -37.5));
      hole_z(t_y=-(l_FR_1b -12.5));
    }
  }
}



module FR_2a()
{
  color("red") difference()
  {
    aluminium_square_z(length=l_FR_2a);

    // Set starting point for holes to be top of bar
    translate([0,0,l_FR_2a/2]) 
    {
      hole_x(t_x=12.5);
      hole_y(t_y=-37.5);
      hole_x(t_x=l_FR_2a-12.5);
      hole_y(t_y=-l_FR_2a+37.5);

    }
  }
}

module FR_2b()
{
  color("gold") difference()
  {
    aluminium_square_z(length=l_FR_2b);

    // Set starting point for holes to be top of bar
    translate([0,0,l_FR_2b/2]) 
    {
      hole_y(t_y=-12.5);
      hole_x(t_x=37.5);
      hole_x(t_x=l_FR_2b-179);
      hole_x(t_x=l_FR_2b-95);
      hole_x(t_x=l_FR_2b-37.5);
      hole_y(t_y=-l_FR_2b+12.5);
    }
  }
}

module FR_2c()
{
  color("darkorange") difference()
  {
    aluminium_square_z(length=l_FR_2c);

    // Set starting point for holes to be top of bar
    translate([0,0,l_FR_2c/2]) 
    {
      hole_x(t_x=12.5);
      hole_y(t_y=-l_FR_2c+105.5);
      hole_y(t_y=-l_FR_2c+37.5);
      hole_x(t_x=l_FR_2c-12.5);
    }
  }
}

FR_2c();


