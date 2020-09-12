abstract class UiComponent {

  String hint;

  UiComponent parent;

  void showHint() {
    if (hint != null) {
      print(hint);
    } else {
      parent?.showHint();
    }
  }

  void setParent(UiComponent parent) {
    this.parent = parent;
  }

}

abstract class Container extends UiComponent {

  final _childs = <UiComponent>[];

  void add(UiComponent component) {
    _childs.add(component);
    component.setParent(this);
  }

}

class Button extends UiComponent {

  Button(String hint) {
    this.hint = hint;
  }

}

class CheckBox extends UiComponent {

  CheckBox(String hint) {
    this.hint = hint;
  }

}

class Row extends Container {

  Row(String hint) {
    this.hint = hint;
  }

}

class Dialog extends Container {}