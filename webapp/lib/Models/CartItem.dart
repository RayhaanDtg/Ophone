// ignore_for_file: non_constant_identifier_names

// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';

import 'Product.dart';

class CartItem extends Equatable {
  final int cart_Item_ID;
  int quantity = 0;
  final Product product;
  int subtotal;

  CartItem(
      {required this.cart_Item_ID,
      required this.product,
      required this.subtotal,
      required this.quantity});

  @override
  // TODO: implement props
  List<Object?> get props => [cart_Item_ID, quantity, product, subtotal];

  void updateSubTotal() {
    subtotal = quantity * product.product_price;
  }
}
