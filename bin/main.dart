import 'package:design_patterns_on_dart/creational/builder.dart';

void main() {

  var screen = Screen()
    ..title = 'title'
    ..footer = 'footer';
  print(screen);

}
