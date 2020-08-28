import 'package:design_patterns_on_dart/strategy.dart';
import 'package:design_patterns_on_dart/template.dart';

void main() {

  Sportsman sportsman = Runner();
  sportsman.doWorkout();
  print('---');
  sportsman = Bodybuilder();
  sportsman.doWorkout();
  print('---');
  sportsman = Cyclist();
  sportsman.doWorkout();
  print('---');

}
