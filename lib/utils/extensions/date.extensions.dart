extension DateExtension on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isSameDay(DateTime other) {
    return day == other.day;
  }

  bool isSameMonth(DateTime other) {
    return month == other.month;
  }

  bool isSameYear(DateTime other) {
    return year == other.year;
  }

  /// Get first day of the month.
  DateTime get firstDayOfMonth => DateTime(year, month, 1);

  /// Get last day of the month.
  DateTime get lastDayOfMonth => DateTime(year, month + 1, 0);
}