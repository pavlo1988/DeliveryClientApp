import 'package:delivery_app/models/cart_product.dart';

class Cart {
  String id;
  String clientId;
  List<CartProduct> products;

  Cart(
    {
      this.id,
      this.clientId,
      this.products,
    }
  );


  Cart.fromJson(Map<dynamic, dynamic> json){
    id = json['id'];
    clientId = json['clientId'];
    products = json['products'].map((product) {return CartProduct.fromJson(product);}).toList();
  }


  Map<String, dynamic> toJson() => {
    'id' : id,
    'clientId': clientId,
    'products': products.map((product) {return product.toJson();}),
  };
}
