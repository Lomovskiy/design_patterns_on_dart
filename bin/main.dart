import 'package:design_patterns_on_dart/state.dart';

void main() {

  var order = Order(AssignedState());
  order.handleInput(InputType.PRESS_ADD_PHOTO_BUTTON);
  order.handleInput(InputType.PRESS_START_WORK_BUTTON);
  order.handleInput(InputType.PRESS_ADD_PHOTO_BUTTON);
  order.handleInput(InputType.PRESS_POSTPONE_BUTTON);
  order.handleInput(InputType.PRESS_ADD_PHOTO_BUTTON);
  order.handleInput(InputType.PRESS_ADD_PHOTO_BUTTON);
  order.handleInput(InputType.PRESS_END_WORK_BUTTON);
  order.handleInput(InputType.PRESS_START_WORK_BUTTON);

}
