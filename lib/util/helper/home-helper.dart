import 'package:orderfastfood/model/model.dart';

class HomeHelper {

  static Future < List < Food >> getFoods() async {
    List < Food > foods = [];
    foods.add(
      Food(
        name: 'Burgers',
        iconPath: 'assets/icons/burger-icon.png',
        imagePath: 'assets/image/burger-image.png',
        description: 'Chicken Burger',
        price: 20.95,
        isSelected: false
      )
    );
    foods.add(
      Food(
        name: 'Pizza',
        iconPath: 'assets/icons/burger-icon.png',
        imagePath: 'assets/image/burger-image.png',
        description: 'Pizza',
        price: 20.95,
        isSelected: false
      )
    );
    foods.add(
      Food(
        name: 'Cakes',
        iconPath: 'assets/icons/cakes-icon.png',
        imagePath: 'assets/image/burger-image.png',
        description: 'Cakes',
        price: 20.95,
        isSelected: false
      )
    );
    return foods;
  }

}