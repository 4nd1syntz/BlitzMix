$fn=200;
//Raus aus
difference() {
    //zylinder unten grundmaße
   union() {
    cylinder(h = 4.85, d = 8);
    //abdeckung
translate([0,-5,0]){ 
    difference(){
cylinder(h=4.85, r1=4, r2=2);
    cylinder(h=4.85, r1=3, r2=1,5);}
}}
    translate([0, -6, 3])
    rotate ([260,0,0]) {
        union() {
    //Led Aushöhlung oben bogen
           cylinder (h = 4.5, d = 4);
           cube(size = [2, 3 , 4.5,], center=false);
           rotate([0, 0, 90])
           cube( size = [3, 2 , 4.5,], center=false); 
 }}
    //halter unten Schalter
            cube([3.2,2.2,5], center =true);   
   //innenaushöhlung
            translate([0,0,2.5]){
            cylinder(h = 3, r=3, center = false);}   
            translate([0,0,3]){
            cylinder(h = 5, d=5);}  
   //Led ausrundung
           translate([0, -3.9, 0]) {
            rotate([335,0,0]) cylinder(3.5, d=4, center=false);}
  //schräger bolzen 
                translate([0,-7,-0.20]){
          rotate([305,0,0]) cylinder(8, d=4 );}
      }
// oberer Grundzylinder Raus aus
difference() {               
translate([0,0,4.85]) {
    cylinder(8, d = 6.6);}
translate([0,0,3]){
            cylinder(h = 7, d=5);}  
             translate([0,0,9.5]){
            sphere(d=5);} }



