//Rectangle
class Figure {
  double width;
  double height;
  Figure({required this.width, required this.height});

  double calculatePerimeter() {
    return (width + height) * 2;
  }

  double calculateArea() {
    return width * height;
  }
}

void main() {
  var rectangle = Figure(width: 10, height: 20);
  print(rectangle.calculatePerimeter());
  print(rectangle.calculateArea());
}
