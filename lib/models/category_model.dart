import 'package:flutter/cupertino.dart';

class CategoriesModel {
  String name;
  String image;

  CategoriesModel({
    required this.name,
    required this.image,
  });
}

class JopModel with ChangeNotifier {
  String companyName;
  String image;
  String jopTitle;
  String salary;
  String date;
  String location;
  String postion;
  String requirment;
  String describtion;
  bool isFavorited;

  JopModel({
    required this.companyName,
    required this.image,
    required this.jopTitle,
    required this.salary,
    required this.date,
    required this.location,
    required this.postion,
    required this.describtion,
    required this.requirment,
    this.isFavorited = false,
  });

  
  void toogleFavoriteStatus() {
    isFavorited = !isFavorited;
    notifyListeners();
  }

}
