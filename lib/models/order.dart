import 'package:cloud_firestore/cloud_firestore.dart';

class Order {
  String id;
  String orderName;
  String orderBy;
  DateTime orderDate;
  String status;
  GeoPoint position;
  String totalAmount;

  Order(
    {
      this.id,
      this.orderName,
      this.orderBy,
      this.orderDate,
      this.status,
      this.position,
      this.totalAmount
    }
  );


  Order.fromJson(Map<dynamic, dynamic> json){
    id = json['id'];
    orderName = json['orderName'];
    orderBy = json['orderBy'];
    orderDate = json['orderDate'].toDate();
    status = json['status'];
    position = json['position'];
    totalAmount = json['totalAmount'];
  }


  Map<String, dynamic> toJson() => {
    'id' : id,
    'orderName': orderName,
    'orderBy': orderBy,
    'orderDate': orderDate,
    'status': status,
    'position': position,
    'totalAmount' : totalAmount
  };
}
