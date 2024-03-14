import 'package:intl/intl.dart';

class DateAppUtils {
  static String dateForUpdate({required String date}) {
    final dateTime = DateTime.parse(date);

    final format = DateFormat('yyyy-MM-dd hh:mm');
    final clockString = format.format(dateTime);
    return clockString;
  }

  static String dateRequestWithoutTime({required DateTime date}) => "${date.year}/${date.month}/${date.day}";
  
  
}
