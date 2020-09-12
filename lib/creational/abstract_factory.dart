abstract class Button {}

abstract class CheckBox {}

abstract class TextField {}

abstract class UiFactory {

  Button getButton();

  CheckBox getCheckBox();

  TextField getTextField();

}

class IOSButton implements Button {}

class IOSCheckBox implements CheckBox {}

class IOSTextField implements TextField {}

class AndroidButton implements Button {}

class AndroidCheckBox implements CheckBox {}

class AndroidTextField implements TextField {}

class IOSUIFactory implements UiFactory {

  @override
  Button getButton() {
    return IOSButton();
  }

  @override
  CheckBox getCheckBox() {
    return IOSCheckBox();
  }

  @override
  TextField getTextField() {
    return IOSTextField();
  }

}

class AndroidUIFactory implements UiFactory {

  @override
  Button getButton() {
    return AndroidButton();
  }

  @override
  CheckBox getCheckBox() {
    return AndroidCheckBox();
  }

  @override
  TextField getTextField() {
    return AndroidTextField();
  }

}

