import 'package:get/get.dart';

class FavouriteController extends GetxController{

  RxList<String> fruitList = ['Orange', 'Apple', 'Mangoes', 'Banana'].obs;

  // Make this list dynamic because it is empty
  RxList tempFruitList = [].obs;

  addToFavourite(String value) {
    tempFruitList.add(value);
  }

  removeFromFavourite(String value) {
    tempFruitList.remove(value);
  }

}