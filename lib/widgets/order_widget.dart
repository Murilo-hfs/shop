import 'package:flutter/material.dart';
import 'package:shop/providers/orders.dart';

class OrderWidget extends StatelessWidget {
  final Order order;
  OrderWidget(this.order);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text('R\$ ${order.total}'),
      ) ,
    );
  }
}