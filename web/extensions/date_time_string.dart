import 'package:shamsi_date/shamsi_date.dart';

extension DateTimeString on Jalali {
  String toCustomTimeString() {
    final minute = '${this.minute > 9 ? this.minute : '0${this.minute}'}';
    return '$hour:$minute';
  }

  String toCustomDateString() {
    final weekdays = {
      'شنبه',
      'یک‌شنبه',
      'دوشنبه',
      'سه‌شنبه',
      'چهارشنبه',
      'پنج‌شنبه',
      'جمعه',
    }.toList();

    final months = {
      'فروردین',
      'اردیبهشت',
      'خرداد',
      'تیر',
      'امرداد',
      'شهریور',
      'مهر',
      'آبان',
      'آذر',
      'دی',
      'بهمن',
      'اسفند',
    }.toList();

    final weekday = weekdays[weekDay - 1];
    final month = months[this.month - 1];

    return '$weekday، $day $month';
  }
}
