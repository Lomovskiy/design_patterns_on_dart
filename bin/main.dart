import 'package:design_patterns_on_dart/chain_of_responsibility.dart';
import 'package:design_patterns_on_dart/visitor.dart';

void main() {

  final dialog = Dialog();

  final row1 = Row('row1');
  final row2 = Row('row2');

  final btn1 = Button('button1');
  final btn2 = Button('button2');

  final chb1 = CheckBox(null);
  final chb2 = CheckBox('check_box2');

  row1.add(btn1);
  row1.add(btn2);

  row2.add(chb1);
  row2.add(chb2);

  dialog.add(row1);
  dialog.add(row2);

  chb1.showHint();
  btn1.showHint();

}
