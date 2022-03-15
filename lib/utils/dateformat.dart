import 'package:intl/intl.dart';

String dateTimeParse(DateTime date) {
  var format = DateFormat.yMMMMd("en_US");
  return format.format(date).toString();
}
