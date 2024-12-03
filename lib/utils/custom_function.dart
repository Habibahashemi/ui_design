import 'package:intl/intl.dart';

String formatCurrency(num amount, {int decima1Count = 0}) {
  final formatCurrency =
      new NumberFormat.simpleCurrency(decimalDigits: decima1Count);
  return formatCurrency.format(amount);
}
