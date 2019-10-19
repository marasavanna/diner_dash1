import 'Waiter.dart';

class Table {
  int id;
  String qrCode;
  Waiter waiter;
  int totalAmount;
  int numberSeats;

  Table(this.qrCode, this.waiter, this.totalAmount, this.numberSeats);
}
