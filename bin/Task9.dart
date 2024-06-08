import 'dart:math';

void main() {
  List<Point> points = [
    const Point(3, 4),
    const Point(0, 5),
    const Point(-1, -1),
  ];

  List<double> distances = FromOrigin(points);

  print('Distances from origin:');
  for (var i = 0; i < points.length; i++) {
    print('Point (${points[i].x}, ${points[i].y}): ${distances[i]}');
  }
}

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  double FromOrigin() {
    return sqrt(x * x + y * y);
  }
}

List<double> FromOrigin(List<Point> points) {
  List<double> distances = [];
  for (var point in points) {
    distances.add(point.FromOrigin());
  }
  return distances;
}


