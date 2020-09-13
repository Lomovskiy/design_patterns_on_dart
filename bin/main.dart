import 'package:design_patterns_on_dart/creational/abstract_factory.dart';
import 'package:design_patterns_on_dart/creational/builder.dart';

void main() {

  Screen screen = ScreenBuilder()
      .setBody('body')
      .setFooter('footer')
      .setTitle('title')
      .build();
  print(screen);

}
