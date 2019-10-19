import 'package:flutter_app/model/OrderStatus.dart';
import 'package:flutter_app/model/Product.dart';

class Order {
  int id;
  int clientId;
  int waiterId;
  int tableId;
  int currentAmount;
  OrderStatus status;
  List<Product> products;

  Order(this.id, this.clientId, this.waiterId, this.tableId, this.currentAmount,
      this.status, this.products);
}
