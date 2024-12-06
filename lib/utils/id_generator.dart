import 'package:intl/intl.dart';

/// Generates a unique String ID using a passed [baseString] and a [DateTime].
/// If [dateTime] is not passed, the current DateTime is used.
String generateId(String baseString, {DateTime? dateTime}) {
  final now = dateTime ?? DateTime.now();
  final formattedDate = DateFormat('yyyyMMddHHmmss').format(now);
  return '${baseString}_$formattedDate';
}
