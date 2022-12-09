import 'package:equatable/equatable.dart';

import 'CartItem.dart';
import 'Product.dart';

class Cart extends Equatable {
  final int cart_ID;
  List<CartItem> cart_items;
  final int total;
  //final int subtotal;

  Cart({
    required this.cart_ID,
    required this.cart_items,
    required this.total,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [cart_ID, cart_items, total];

  void addToCart(Product product, int quantity) {
    for (int i = 0; i < cart_items.length; i++) {
      if (cart_items[i].product == product) {
        cart_items[i].quantity = quantity;
        return;
      }
    }
    cart_items.add(CartItem(
        cart_Item_ID: 12,
        product: product,
        subtotal: quantity * product.product_price,
        quantity: quantity));
  }

  void removeFromcart(Product product, int quantity) {
    for (int i = 0; i < cart_items.length; i++) {
      if (cart_items[i].product == product) {
        if (checkQuantity(quantity)) {
          cart_items.remove(cart_items[i]);
        } else {
          cart_items[i].quantity = quantity;
        }
        return;
      }
    }
  }

  bool checkQuantity(int quantity) {
    return (quantity == 0);
  }
}
