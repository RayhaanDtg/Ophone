import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int product_ID;
  final String product_sku;
  final int category_ID;
  final int brand_ID;
  final String product_description;
  final int product_price;
  final List<String> images;
  final String thumb_image;

  const Product({
    required this.product_ID,
    required this.product_sku,
    required this.category_ID,
    required this.brand_ID,
    required this.product_description,
    required this.product_price,
    required this.images,
    required this.thumb_image,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        product_ID,
        product_sku,
        category_ID,
        brand_ID,
        product_description,
        product_price,
        images,
        thumb_image
      ];
}
