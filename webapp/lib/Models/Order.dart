import 'package:equatable/equatable.dart';
import 'package:webapp/Models/BillingProfile.dart';

import 'Cart.dart';

class Order extends Equatable {
  final Cart cart;
  final BillingProfile customer_profile;
  final int deliveryFee;
  final int orderTotal;

  const Order({
    required this.cart,
    required this.customer_profile,
    required this.deliveryFee,
    required this.orderTotal,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [cart, customer_profile, deliveryFee, orderTotal];
}
