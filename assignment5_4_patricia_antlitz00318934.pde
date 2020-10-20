/* Assignment 5-4

Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
12 October 2020

4. my_victory: Inspired by Piet Mondrian’s Victory Boogie Woogie,
create your own “Victory Boogie Woogie”. Include your signature!

I have used other sources, as detailed in my submitted source file.
List these sources:

https://www.youtube.com/watch?v=76dJIRh4BU0
https://en.wikipedia.org/wiki/Piet_Mondrian#/media/File:Piet_Mondriaan_Victory_Boogie_Woogie.jpg
http://forwardslash.tech/2012/01/22/patterns-with-processing/
https://stackoverflow.com/questions/12701437/make-a-loop-that-draws-lines-in-processing

*/

// code starts here.

// set the global variables for colors
int white = color(255);
int lightGray = color(230);
int gray  = color(200);
int blue = color(0, 60, 170);
int darkBlue = color(0, 0, 90);
int yellow = color(255, 217, 0);
int darkYellow = color(245, 192, 2);
int red = color(170, 0, 0);
int orig = 0;


// write a function with the setting for the program
void setup(){
  // make a screen sized 500px by  500px
  size(500, 500);
}


// wrte a function to run the commands as draw.
void draw(){
  // add a background color of white
  background(white);

  // set local variables for the height and width of the screen
  int tall = height;
  int wide = width;
  // set local variables for placement of main lines
  int midTall = height/10 -5;
  int midWide = width/2 -5;

  // basic number variables
  int five = 5;
  int ten = 10;
  int twenty = 20;
  int thirty = 30;
  int forty = 40;
  int fifty = 50;

   // General setup for lines.
   // make line ends square
    strokeCap(SQUARE);

  // calls

  /* drawHorizontalSquare is the function that allows the placement of
  squares on the screen in a specific pattern. Function takes a
  size, size, color, x start position on the screen, y start position
  on the scree, x space between squares and y space between squares.
  The following calls generate the mid to large size squares of
  various colors. */
  drawHorizontalSquares(thirty*2, forty, gray, wide/8, orig, forty*2, fifty*2+1);
  drawHorizontalSquares(thirty, thirty, blue, wide/8, orig, thirty*2, fifty*2+1);
  drawHorizontalSquares(fifty, fifty*2, lightGray, orig, tall/10, forty*3+five, forty*8);
  drawHorizontalSquares(forty, thirty, blue, wide/12, midTall + ten+1, forty*2+ten, forty*2+ten);
  drawHorizontalSquares(forty, thirty, red, wide/12, midTall + ten+1, thirty*4, forty*2+ten);
  drawHorizontalSquares(twenty, thirty, lightGray, wide/12, midTall + ten+1, forty*2, forty*2+ten);
  drawHorizontalSquares(forty+five, forty+five, yellow, wide/6, tall/8, fifty*4+ten+8, forty*2+ten+8);

  /* call functions drawVerticalLines which draws a sequence of vertical
  yellow lines, calls for color, y position 1 and y position 2 */
  drawVerticalLines(darkYellow, ten, orig, tall);
   /* call functions drawHorizontalLines which draws a sequence of horizontal
  yellow lines, calls for color, x position 1 and x position 2 */
  drawHorizontalLines(darkYellow, ten,  wide, orig);

  /* These calls creates the small squares of various colors on the
  horizontal lines previously created*/
  drawHorizontalSquares(ten, ten, darkBlue, orig, midTall, fifty+twenty, forty*2+ten);
  drawHorizontalSquares(ten, ten, red, ten, midTall, fifty+twenty, forty*2+ten);
  drawHorizontalSquares(five, ten, darkBlue, twenty, midTall, fifty+twenty, forty*2+ten);
  drawHorizontalSquares(ten+five, ten, lightGray, forty, midTall, fifty+twenty, forty*2+ten);
  drawHorizontalSquares(five, ten, darkBlue, twenty, midTall, fifty+twenty, forty*2+ten);

  drawHorizontalSquares(ten, ten, darkBlue, orig, midTall, fifty+twenty, fifty*3);
  drawHorizontalSquares(ten, ten, red, ten, midTall, fifty+twenty, fifty*3);
  drawHorizontalSquares(five, ten, darkBlue, twenty, midTall, fifty+twenty, fifty*3);
  drawHorizontalSquares(ten+five, ten, lightGray, forty, midTall, fifty+twenty, fifty*3);
  drawHorizontalSquares(five, ten, blue, twenty, midTall, fifty+twenty, fifty*3);

  // These calls create the small squares on the vertical lines
  drawVerticalSquares(ten, ten, darkBlue, midWide, orig);
  drawVerticalSquares(ten, ten, red, midWide, ten);
  drawVerticalSquares(ten, five, lightGray, midWide, twenty);

  /* drawRect created shapes in specific placed on the screen. No pattern
  followed, function calls for color, x position, y positon, width and height. */
  drawRect(lightGray, orig, orig, wide, fifty+twenty+2);
  drawRect(gray, midWide -forty+five, tall/7, midWide, thirty);

// drawTrangles create the four triangles on each end of the screen
    drawTriangles(orig, orig, orig, tall/2, wide/2, orig);
    drawTriangles(wide/2, orig, wide, orig, wide, tall/2);
    drawTriangles(wide, tall/2, wide, tall, wide/2, tall);
    drawTriangles(orig, tall/2, orig, tall, wide/2, tall);

 // signature
 // change color to blue
 fill(blue);
 // change font size to 20px
 textSize(ten+five);
 // add text
 text("Patricia Antlitz", midWide + fifty+twenty, tall - twenty);


}

/* Function draw rect. Param "c" represents a color, x1 the position of x,
y1, the position of y, wide the width or the rectangle and tall the height.*/
void drawRect(int c, int x1, int y1, int wide, int tall){
  fill(c);
  rect(x1, y1, wide, tall);
}

/* drawVerticalLines function calls for param "c" of type integer to be used
to determinate the color of the line, float y1 calls for the position of
the first point of line in the y axis and float y2 calls for the position
of the second point of the line in the y axis */

void drawVerticalLines(int c, int t, float y1, float y2){

// create local variable for the screen's width.
int wide = width;
// set local variable for the width of the where the lines should start (250px)
int xloc = wide/2;

  /* for loop will iterate the commands. Set a variable of type integer
  as x1 which is equal to variable xloc, as long a variable x1 is less or
  equal to the width of the page, add 100px to x1 and draw a line using param
  "c" as the color for the stroke, set the thickness of the stroke to 10px,
  and add the for loop as point x1 and x2 of the line. This should draw
  3 lines starting at 250px, 350px, 450px width. */
  for(int x1 = xloc; x1 <= wide; x1 += 100) {
        // assign stoke color for the lines
        stroke(c);
        // add a thickness of with int of "t"
        strokeWeight(t);
        // Create a line
        line(x1, y1, x1, y2);
   }
}


/* drawHorizontalLines function calls for param "c" of type integer to be used
to determinate the color of the line, float x1 calls for the position of
the first point of line in the x axis and float x2 calls for the position
of the second point of the line in the x axis */

void drawHorizontalLines(int c, int  t, float x1, float x2){

// create local variable for the screen's height.
int tall = height;
// set local variable for the height of the where the lines should start(50px)
int yloc = tall/10;

// add a thickness of with int of "t"
strokeWeight(t);

    /* for loop will iterate the commands. Set a variable of type integer
  as y1 which is equal to variable yloc, as long a variable y1 is less or
  equal to the height of the page, add 150px to y1 and draw a line using param
  "c" as the color for the stroke, set the thickness of the stroke to 10px,
  and add the for loop as point y1 and y2 of the line. This should draw
  4 lines starting at 50px, 200px, 350px and 500px height. */
  for(int y1 = yloc; y1 <= tall; y1 += 150) {
        // assign stoke color for the lines
        stroke(c);
        // Create a line
        line(x1, y1, x2, y1);
   }


    /* for loop will iterate the commands. Set a variable of type integer
  as y1 which is equal to variable yloc, as long a variable y1 is less or
  equal to the height of the page, add 90px to y1 and draw a line using param
  "c" as the color for the stroke, set the thickness of the stroke to 10px,
  and add the for loop as point y1 and y2 of the line. This should draw
  5 lines starting at 50px, 140px, 230px, 320px and 410px height. */
     for(int y1 = yloc; y1 <= tall; y1 += 90) {
        // assign stoke color for the lines
        stroke(c);
        // Create a line
        line(x1, y1, x2, y1);
   }

}

/* This fucntion create all the squares on a vertical line, the ones
placed on top of the three vertical lines */
void drawVerticalSquares(int wide, int tall, int c, int xloc, int y){

  /* for loops indicated that, as long as y is being added on and y is
  equal or less than the height of the screen, add 40px to the total of
  y to separate the squares*/
  for (y++; y <= height; y+=40) {
    /* as long a x is equal to xloc (the indicated position of x), and x
    is less than the width of the screen, add 100 to x to separate the squares*/
  for(int x = xloc; x <= width; x+=100 ){
    noStroke();
    fill(c);
    rect(x, y, wide, tall);
    }
   }
}

/* This fuction is used to create all the small squares places on top of the lines
and all the mid to large size squares on the image. Params: wide for the width
of the square, tall for the height, c for the color, x for the position of the
square on the x axis. yloc for the position at y, xSpace for the space between
squares on the x axis and ySpace for the space of the squares on the y axis.*/

void drawHorizontalSquares(int wide, int tall, int c, int x, int yloc,
int xSpace, int ySpace){


  for(x++; x <= width; x += xSpace ){
  for(int y = yloc; y <= height; y += ySpace) {
    noStroke();
    fill(c);
    rect(x, y, wide, tall);
    }
   }
}

/* draws triangles on the sides of the screen. Takes params x1, y1 for the
first point of the triangle, x2, y2 for the second point and x3, y3 for the
third */

void drawTriangles(int x1, int y1, int x2, int y2, int x3, int y3){
  // add color of gray to the stroke
  stroke(gray);
  // give a stroke weight of 2
  strokeWeight(2);
  // fill the triangles with the color why
  fill(white);
  // Create triangle calling parameters.
  triangle(x1, y1, x2, y2, x3, y3);
}

// end.
