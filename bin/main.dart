import 'package:design_patterns_on_dart/visitor.dart';

void main() {

  final figures = <Figure>[];

  figures.add(Triangle());
  figures.add(Circle());
  figures.add(Rectangle());

  final colorDrawer = ColorDrawer();
  final blackWhiteDrawer = BlackWhiteDrawer();

  figures.forEach(colorDrawer.draw);

}
