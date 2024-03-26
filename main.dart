import 'dart:io';

// Interface for Shape
abstract class Shape {
  double area();
}

// Rectangle class implementing Shape interface
class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

// Circle class implementing Shape interface
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

// Class demonstrating inheritance and method override
class Square extends Rectangle {
  Square(double side) : super(side, side);

  // Override the area method to calculate area for a square
  @override
  double area() {
    return width * width;
  }
}

void main() {
  // Creating instances of classes
  var rectangle = Rectangle(5, 4);
  var circle = Circle(3);
  var square = Square(6);

  // Print areas
  print('Area of rectangle: ${rectangle.area()}');
  print('Area of circle: ${circle.area()}');
  print('Area of square: ${square.area()}');

  // Method demonstrating the use of a loop
  print('\nLoop demonstration:');
  for (int i = 1; i <= 5; i++) {
    print('Iteration $i');
  }

  // Read data from a file
  var file = File('data.txt');
  var lines = file.readAsLinesSync();

  // Initialize object with data from file
  var widthFromFile = double.parse(lines[0]);
  var heightFromFile = double.parse(lines[1]);
  var rectangleFromFile = Rectangle(widthFromFile, heightFromFile);
  print('\nRectangle initialized with data from file:');
  print('Width: ${rectangleFromFile.width}');
  print('Height: ${rectangleFromFile.height}');
  print('Area: ${rectangleFromFile.area()}');
}
