import 'package:flutter/material.dart';
import 'package:simple_statamangment/model/CatalogModer.dart';
class DataSource with ChangeNotifier{
  List<CatalogModel>_listCatalogModel =[
    CatalogModel(color:Colors.redAccent,CatalogName: "Code smell",CatalogPrise: 50),
    CatalogModel(color: Colors.pink,CatalogName: "Control Flow",CatalogPrise: 60),
    CatalogModel(color: Colors.purpleAccent,CatalogName: "Interpreter",CatalogPrise: 100),
    CatalogModel(color: Colors.deepPurple,CatalogName: "Recursion",CatalogPrise: 75),
    CatalogModel(color: Colors.blue,CatalogName: "Heisenbug",CatalogPrise: 45),
    CatalogModel(color: Colors.cyanAccent,CatalogName: "Spaghetti",CatalogPrise: 85),
    CatalogModel(color: Colors.greenAccent,CatalogName: "off-by-one",CatalogPrise: 90),
    CatalogModel(color: Colors.green,CatalogName: "scobe",CatalogPrise: 50),
    CatalogModel(color: Colors.yellowAccent,CatalogName: "callback",CatalogPrise: 60),
    CatalogModel(color:Colors.redAccent,CatalogName: "Code smell",CatalogPrise: 50),
    CatalogModel(color: Colors.pink,CatalogName: "Control Flow",CatalogPrise: 60),
    CatalogModel(color: Colors.purpleAccent,CatalogName: "Interpreter",CatalogPrise: 100),
    CatalogModel(color: Colors.deepPurple,CatalogName: "Recursion",CatalogPrise: 75),
    CatalogModel(color: Colors.blue,CatalogName: "Heisenbug",CatalogPrise: 45),
    CatalogModel(color: Colors.cyanAccent,CatalogName: "Spaghetti",CatalogPrise: 85),
    CatalogModel(color: Colors.greenAccent,CatalogName: "off-by-one",CatalogPrise: 90),
    CatalogModel(color: Colors.green,CatalogName: "scobe",CatalogPrise: 50),
    CatalogModel(color: Colors.yellowAccent,CatalogName: "callback",CatalogPrise: 60),
  ];
  List <String> _CardList =[];
  double _allPrice=0;

  double get allPrice => _allPrice;

  List<CatalogModel> get listCatalogModel => _listCatalogModel;

  List<String> get CardList => _CardList;

  void addToCard (CatalogModel c){
    _CardList.add(c.CatalogName);
    _allPrice =_allPrice+c.CatalogPrise;
    notifyListeners();
  }


}


