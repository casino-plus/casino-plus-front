import 'package:intl/intl.dart';

extension DateFormatter on DateTime {
  String format(String format) {
    return DateFormat(format).format(this);
  }
}
