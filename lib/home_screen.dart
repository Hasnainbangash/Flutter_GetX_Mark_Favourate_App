import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> fruitList = ['Orange', 'Apple', 'Mangoes', 'Banana'];

  List<String> tempFruitList = [];

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
          itemCount: fruitList.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(fruitList[index].toString()),
                trailing: Icon(Icons.favorite, color: tempFruitList.contains(fruitList[index].toString()) ? Colors.red : Colors.white),
                onTap: (){

                  if (tempFruitList.contains(fruitList[index].toString())) {
                    tempFruitList.remove(fruitList[index].toString());
                  } else {
                    tempFruitList.add(fruitList[index].toString());
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
