echo(version=version());

$fn=80;


tube_radius = 4.75/2.0;
filament_radius = 2.50 / 2.0;

translate([-30,0,0])
difference() 
{
    
    translate([15,-13,-8]) cube([30,35,16], center=false);
   
    union() {
        color("magenta") 
            rotate_extrude(angle=30)
                  translate([30,0])
                  circle(filament_radius);
        
        color("red")
            rotate([0,0,29])
                rotate_extrude(angle=25)
                      translate([30,0])
                      circle(tube_radius);

        color("green") 
           translate([60,0,0])
             rotate_extrude(angle=-30)
                  translate([-30,0])
                  circle(filament_radius);
        
        color("black")
            translate([60,0,0])
            rotate([0,0,-29])
                rotate_extrude(angle=-25)
                      translate([-30,0])
                      circle(tube_radius);
        
        color("lime")
        translate([30,0,0])
            rotate([90,0,0])
                cylinder(h = 5, r1 = filament_radius, r2 = filament_radius, center = false);

        
        translate([30,-4,0])
            rotate([90,0,0])
                union() {
                    color("orange")cylinder(h = 3, r1 = filament_radius, r2 = tube_radius, center = false);
                    translate([0,0,3])color("blue")cylinder(h = 6.1, r1 = tube_radius, r2 = tube_radius, center = false);
                }
                  
    }
};


translate([15,16,14]) 
    difference() 
        {
            union() 
            {
            color("green")translate([-2,0,0])cube([56,10,12], center=true);
            color("blue")translate([-15,-10,-3])cube([30,10,6], center=true);
            }
            color("red")translate([9,0,4])cube([28,10,4], center=true);
            
        }