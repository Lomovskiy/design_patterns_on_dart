import 'package:design_patterns_on_dart/command.dart';

void main() {

  var receiver = ReceiverImpl();
  var invoker = Invoker();
  var command = ConcreteCommand(receiver);
  invoker.setCommand(command);
  invoker.run();

}
