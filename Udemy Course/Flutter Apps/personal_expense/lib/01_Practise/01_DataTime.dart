import 'package:intl/intl.dart';

void main() {
  DateTime n1 = DateTime.now().subtract(Duration(days: 7));
  print(n1);
  print("");

  var dateTime = DateTime.now();
  print(dateTime);
  print(DateFormat.E().format(dateTime));
  print(DateFormat.E().format(dateTime).substring(0,1));
  print(dateTime.day);
  print(dateTime.month);
  print(dateTime.year);
  print(DateFormat.yMMMd().format(dateTime));

}


