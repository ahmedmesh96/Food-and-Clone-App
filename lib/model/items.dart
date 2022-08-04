import 'package:cloud_firestore/cloud_firestore.dart';

class Items {
  String? menuID;
  String? sellerUID;
  String? itemID;
  String? title;
  String? shortInfo;
  Timestamp? punlishedDate;
  String? thumbanilUrl;
  String? longDescription;
  String? status;
  int? price;

  Items(
      {this.itemID,
      this.longDescription,
      this.menuID,
      this.price,
      this.punlishedDate,
      this.sellerUID,
      this.shortInfo,
      this.status,
      this.thumbanilUrl,
      this.title});

  Items.fromJson(Map<String, dynamic> json) {
    menuID = json['menuId'];
    sellerUID = json['sellerUID'];
    itemID = json['itemID'];
    title = json['title'];
    shortInfo = json['shortInfo'];
    punlishedDate = json['punlishedDate'];
    thumbanilUrl = json['thumbanilUrl'];
    longDescription = json['longDescription'];
    status = json['status'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['menuID'] = menuID;
    data['sellerUID'] = sellerUID;
    data['itemID'] = itemID;
    data['shortInfo'] = shortInfo;
    data['punlishedDate'] = punlishedDate;
    data['thumbanilUrl'] = thumbanilUrl;
    data['longDescription'] = longDescription;
    data['status'] = status;
    data['price'] = price;
    data['title'] = title;
    return data;
  }
}
