import 'package:equatable/equatable.dart';

class BillingProfile extends Equatable {
  final String name;
  final String address;
  final String city;
  final String province;
  final String zip;
  final int phone;

  const BillingProfile({
    required this.name,
    required this.address,
    required this.city,
    required this.province,
    required this.zip,
    required this.phone,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        address,
        city,
        province,
        zip,
        phone,
      ];
}
