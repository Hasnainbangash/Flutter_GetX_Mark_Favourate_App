import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'favourite_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  FavouriteController controller = Get.put(FavouriteController());

  // By using it simply
  // List<String> fruitList = ['Orange', 'Apple', 'Mangoes', 'Banana'];
  // List<String> tempFruitList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: ListView.builder(
          itemCount: controller.fruitList.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(controller.fruitList[index].toString()),
                trailing: Icon(Icons.favorite, color: controller.tempFruitList.contains(controller.fruitList[index].toString()) ? Colors.red : Colors.white),
                onTap: (){

                  if (controller.tempFruitList.contains(controller.fruitList[index].toString())) {
                    controller.removeFromFavourite(controller.fruitList[index].toString());
                  } else {
                    controller.addToFavourite(controller.fruitList[index].toString());
                  }

                  setState(() {

                  });
                },
              ),
            );
          }),
    );
  }
}
