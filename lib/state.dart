class Order {

  State _currentState;

  Order(this._currentState);

  void changeState(State state) {
    _currentState = state;
  }

  void handleInput(InputType inputType) {
    try {
      _currentState.handleInput(this, inputType);
    }
    on _OrderException catch (e) {
      print(e.message);
    }
  }

}

class AssignedState implements State {

  @override
  void handleInput(Order order, InputType inputType) {
    switch (inputType) {
      case InputType.PRESS_START_WORK_BUTTON: {
        print('Заявка в работе');
        order.changeState(InProgressState());
        break;
      }
      case InputType.PRESS_ADD_PHOTO_BUTTON: {
        throw _OrderException('Пока нельзя добавить фотографию к заявке');
      }
      case InputType.PRESS_END_WORK_BUTTON: {
        print('Заявка закрыта');
        order.changeState(ServicedState());
        break;
      }
      case InputType.PRESS_POSTPONE_BUTTON: {
        print('Заявка отложена');
        order.changeState(PostponedState());
      }
    }
  }

}

class InProgressState implements State {

  @override
  void handleInput(Order order, InputType inputType) {
    switch (inputType) {
      case InputType.PRESS_START_WORK_BUTTON: {
        throw _OrderException('Заяка уже в работе');
      }
      case InputType.PRESS_ADD_PHOTO_BUTTON: {
        print('Добавлена фотография в заявку');
        break;
      }
      case InputType.PRESS_END_WORK_BUTTON: {
        print('Заявка закрыта');
        order.changeState(ServicedState());
        break;
      }
      case InputType.PRESS_POSTPONE_BUTTON: {
        print('Заявка отложена');
        order.changeState(PostponedState());
      }
    }
  }

}

class PostponedState extends State {
  @override
  void handleInput(Order order, InputType inputType) {
    switch (inputType) {
      case InputType.PRESS_START_WORK_BUTTON: {
        print('Заявка в работе');
        order.changeState(InProgressState());
        break;
      }
      case InputType.PRESS_ADD_PHOTO_BUTTON: {
        throw _OrderException('Пока нельзя добавить фотографию к заявке');
      }
      case InputType.PRESS_END_WORK_BUTTON: {
        print('Заявка закрыта');
        order.changeState(ServicedState());
        break;
      }
      case InputType.PRESS_POSTPONE_BUTTON: {
        throw _OrderException('Заяка уже отложена');
      }
    }
  }

}

class ServicedState extends State {

  @override
  void handleInput(Order order, InputType inputType) {
    throw _OrderException('Заяка уже закрыта');
  }

}

abstract class State {

  void handleInput(Order order, InputType inputType);

}

class _OrderException implements Exception {

  final String _message;

  String get message => _message;

  _OrderException(this._message);

}

enum InputType {
  PRESS_START_WORK_BUTTON,
  PRESS_END_WORK_BUTTON,
  PRESS_POSTPONE_BUTTON,
  PRESS_ADD_PHOTO_BUTTON
}