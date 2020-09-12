import 'package:design_patterns_on_dart/creational/abstract_factory.dart';

void main() {

  UiFactory uiFactory = IOSUIFactory();

  var button = uiFactory.getButton();
  var checkBox = uiFactory.getCheckBox();
  var textField = uiFactory.getTextField();

  print(button);
  print(checkBox);
  print(textField);
  print('----------');

  uiFactory = AndroidUIFactory();

  button = uiFactory.getButton();
  checkBox = uiFactory.getCheckBox();
  textField = uiFactory.getTextField();

  print(button);
  print(checkBox);
  print(textField);

}
