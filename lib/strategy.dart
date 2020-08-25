abstract class Strategy {

  void buildRoute(double startPoint, double endPoint);

}

class Navigator {

  Strategy _currentStrategy;

  Navigator(this._currentStrategy);

  void buildRoute(double startPoint, double endPoint) {
    _currentStrategy.buildRoute(startPoint, endPoint);
  }

  void setStrategy(Strategy strategy) {
    _currentStrategy = strategy;
  }

}

class CarStrategy implements Strategy {

  @override
  void buildRoute(double startPoint, double endPoint) {
    print('Построен маршрут на автомобиле от точки $startPoint до точки $endPoint');
  }

}

class PublicTransportStrategy implements Strategy {

  @override
  void buildRoute(double startPoint, double endPoint) {
    print('Построен маршрут на общественном транспорте от точки $startPoint до точки $endPoint');
  }

}

class HikingStrategy implements Strategy {

  @override
  void buildRoute(double startPoint, double endPoint) {
    print('Построен пешеходный маршрут от точки $startPoint до точки $endPoint');
  }

}