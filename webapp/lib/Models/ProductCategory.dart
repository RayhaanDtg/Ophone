import 'package:equatable/equatable.dart';

class ProductCategory extends Equatable {
  final int category_ID;
  final String category_title;
  final List<int> brands;

  const ProductCategory({
    required this.category_ID,
    required this.category_title,
    required this.brands,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        category_ID,
        category_title,
        brands,
      ];
}
