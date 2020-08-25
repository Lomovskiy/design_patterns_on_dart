import 'package:design_patterns_on_dart/strategy.dart';

void main() {

  var navigator = Navigator(PublicTransportStrategy());
  navigator.buildRoute(1.0, 2.0);
  navigator.setStrategy(CarStrategy());
  navigator.buildRoute(3.0, 4.0);
  navigator.setStrategy(PublicTransportStrategy());
  navigator.buildRoute(5.0, 6.0);

}
