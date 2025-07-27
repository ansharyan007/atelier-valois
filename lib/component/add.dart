import 'package:atelier_valois/cloth.dart';
import 'package:flutter/material.dart';

class add extends ChangeNotifier{
  List<Cloth> clothshop=[
    Cloth(name: 'Emboried Tshirt', price: '240', imagePath: 'lib/image/Emboried Tee.png', description: 'luxury'),
    Cloth(name: 'Football Jersey', price: '95', imagePath: 'lib/image/Flame Pattern Football Jersey.png', description: 'Sports'),
    Cloth(name: 'Milo Shark Tee', price: '180', imagePath: 'lib/image/Milo Shark Tee.png', description: 'Casual'),
    Cloth(name: 'Separate Shark Tee', price: '173', imagePath: 'lib/image/Separate Shark Tee.png', description: 'Casual'),
  ];
  List<Cloth> usecart=[];
  List<Cloth> getclothlist(){
    return clothshop;
  }
  List<Cloth> getusercart(){
    return usecart;
  }
  void addcart(Cloth cloth){
    usecart.add(cloth);
    notifyListeners();
  }
  void RemoveItem(Cloth cloth){
    usecart.remove(cloth);
    notifyListeners();
  }
}