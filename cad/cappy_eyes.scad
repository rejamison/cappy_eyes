$fn=100;

size = 1;

//translate([12*size - 5.5,0,-23.5]) mg90s();
translate([-7,0,0]) mount();

//eyes();
translate([12*size,6,0]) {
    //translate([0,0,6]) pupils();
    //pupils_rail();
}

//pupil();

module eyes() {
    difference() {
        union() {
            difference() {
                union() {
                    translate([0,-30*size,0]) rotate([0,0,8]) scale([1,.67,1]) cylinder(h=10,d=100*size);
                    translate([0,30*size,0]) rotate([0,0,-8]) scale([1,.67,1]) cylinder(h=10,d=100*size);
                }
                translate([2*size,-30*size,5]) rotate([0,0,8]) scale([1,.67,1]) cylinder(h=10,d=83*size);
                translate([2*size,30*size,5]) rotate([0,0,-8]) scale([1,.67,1]) cylinder(h=10,d=83*size);
                
                translate([12*size,-24*size,-1]) rotate([0,0,0]) cylinder(h=10,d=17);
                translate([12*size,24*size,-1]) rotate([0,0,0]) cylinder(h=10,d=17);
            }
            translate([12*size,-24*size,0]) rotate([0,0,0]) cylinder(h=4.99,d=7.5);
            translate([12*size,24*size,0]) rotate([0,0,0]) cylinder(h=4.99,d=7.5);
            translate([12*size-9,-(100*size)/2,0]) cube([8,100*size,4.99]);
        }
        groove_size = 1;
        for(i=[-100:10:100]) {
            translate([i,100,0]) rotate([90,0,0]) rotate([0,0,45]) translate([-groove_size/2,-groove_size/2,0]) cube([groove_size,groove_size,200]);
        }
    }
}

module pupil() {
    difference() {
        scale([1,.67,1]) cylinder(h=3,d=43*size);
        translate([0,0,2]) scale([1,.67,1]) cylinder(h=10,d=29*size);
        translate([0,0,-.01]) cylinder(h=1, d=4);
    }
}

module pupils() {
    translate([0,-24*size,0]) pupil();
    translate([0,24*size,0]) pupil();
}

module pupils_rail() {
    translate([0,-24*size,-3]) rotate([0,0,0]) cylinder(h=10,d=4);
    translate([0,24*size,-3]) rotate([0,0,0]) cylinder(h=10,d=4);
    
    translate([-2.5,-(52*size)/2,-3]) cube([5,52*size,2.9]);
}

module mount() {
    translate([-3,-10,-12.5]) cube([13,20,12.5]);
    translate([-4,-10,-14]) cube([6,20,14]);
    //translate([-0.55,0,-17]) cylinder(h=3,d=1.8);
    translate([-3,-10,-14]) cube([33,3.5,4]);
    translate([-3,10-3.5,-14]) cube([33,3.5,4]);
    translate([25.5,-10,-14]) cube([4.5,20,4]);
    //translate([27.55,0,-17]) cylinder(h=3,d=1.8);
}

module mg90s(){
	difference(){			
		union(){
			color("blue") cube([23,12.5,22], center=true);
			color("blue") translate([0,0,8.2]) cube([32,12.5,2.6], center=true);
			color("blue") translate([5.5,0,2.75]) cylinder(r=6, h=25.75, $fn=20, center=true);
			color("blue") translate([-.5,0,2.75]) cylinder(d=5.5, h=25.75, $fn=20, center=true);	
			color("white") translate([5.5,0,3.65]) cylinder(r=2.35, h=29.25, $fn=20, center=true);				
		}
		
		for ( hole = [14,-14] ){
			translate([hole,0,8.2]) cylinder(d=2, h=4, $fn=20, center=true);
            translate([hole,0,8.2]) cube(d=2, h=4);
		}	
        translate([14,-.5,3]) cube([10,1,10]);
        translate([-24,-.5,3]) cube([10,1,10]);
	}
}