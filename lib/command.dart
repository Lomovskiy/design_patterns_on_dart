abstract class Command {

  void execute();

}

class ConcreteCommand implements Command {

  final Receiver _receiver;

  ConcreteCommand(this._receiver);

  @override
  void execute() {
    _receiver.applyCommand(this);
  }

}

abstract class Receiver {

  void applyCommand(Command command);

}

class ReceiverImpl implements Receiver {

  @override
  void applyCommand(Command command) {
    if (command is ConcreteCommand) {
      print('Applying ConcreteCommand');
    }
  }

}

class Invoker {

  Command _command;

  void setCommand(Command command) {
    _command = command;
  }

  void run() {
    _command?.execute();
  }

}