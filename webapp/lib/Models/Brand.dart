import 'package:equatable/equatable.dart';

class Brand extends Equatable {
  final int brand_ID;
  final String brand_name;

  const Brand({required this.brand_ID, required this.brand_name});

  @override
  // TODO: implement props
  List<Object?> get props => [brand_ID, brand_name];
}
