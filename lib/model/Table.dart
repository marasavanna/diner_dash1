import 'Waiter.dart';

class Table {
  final String qrCode;
  final Waiter waiter;
  final int totalAmount;
  final int numberSeats;

  Table(this.qrCode, this.waiter, this.totalAmount, this.numberSeats);
}