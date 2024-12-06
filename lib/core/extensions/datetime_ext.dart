extension DateTimeExt on DateTime {
  String get hm =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
}
