import 'package:cloud_firestore/cloud_firestore.dart';




class Menus {
  String? menuID;
  String? sellerUID;
  String? menuTitle;
  String? menuInfo;
  Timestamp? publishedDate;
  String? thumbanilUrl;
  String? status;

  Menus ({
    this.menuID, this.menuInfo, this.menuTitle, this.publishedDate, this.sellerUID, this.status, this.thumbanilUrl
  });

  Menus.fromJson(Map<String, dynamic> json)
  {
    menuID = json["menuID"];
    sellerUID = json["sellerUID"];
    menuTitle = json["menuTitle"];
    menuInfo = json["menuInfo"];
    publishedDate = json["publishedDate"];
    thumbanilUrl = json["thumbanilUrl"];
    status = json["status"];
  }

  Map<String, dynamic> toJson()
  {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["menuID"] = menuID;
    data["sellerUID"] = sellerUID;
    data["menuTitle"] = menuTitle;
    data["menuInfo"] = menuInfo;
    data["publishedDate"] = publishedDate;
    data["thumbanilUrl"] = thumbanilUrl;
    data["status"] = status;

    return data;

  }

  
}