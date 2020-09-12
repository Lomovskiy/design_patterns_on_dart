abstract class Drawer {

  void draw(Figure figure);

}

class ColorDrawer implements Drawer {

  @override
  void draw(Figure figure) {
    print('Рисую цветной $figure');
  }

}

class BlackWhiteDrawer implements Drawer {

  @override
  void draw(Figure figure) {
    print('Рисую чёрно-белый $figure');
  }

}

abstract class Figure {

  void accept(Drawer drawer);

}

class Triangle extends Figure {

  @override
  void accept(Drawer drawer) {
    drawer.draw(this);
  }

  @override
  String toString() {
    return 'треугольник';
  }

}

class Circle extends Figure {

  @override
  void accept(Drawer drawer) {
    drawer.draw(this);
  }

  @override
  String toString() {
    return 'круг';
  }

}

class Rectangle extends Figure {

  @override
  void accept(Drawer drawer) {
    drawer.draw(this);
  }

  @override
  String toString() {
    return 'прямоугольник';
  }

}
