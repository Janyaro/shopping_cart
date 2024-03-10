import 'package:flutter/rendering.dart';

class Cart {
  late int? id;
  late final String? productId;
  late final String? productName;
  late final int? initialPrice;
  late final int? ProductPrice;
  late final String? unitTag;
  late final String? image;

  Cart(
      {required this.id,
      required this.productId,
      required this.productName,
      required this.ProductPrice,
      required this.initialPrice,
      required this.unitTag,
      required this.image});
  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        productId = res['productId'],
        productName = res['productName'],
        ProductPrice = res['ProductPrice'],
        initialPrice = res['initialPrice'],
        unitTag = res['unitTag'],
        image = res['image'];
  Map<String, Object?> toMap() {
    return {
      'id': id,
      'productId': productId,
      "productName": productName,
      "initialPrice": initialPrice,
      "ProductPrice": ProductPrice,
      "unitTag": unitTag,
      "image": unitTag
    };
  }
}
