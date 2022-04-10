import 'package:flutter/material.dart';

class ItemListScreen extends StatefulWidget {
  ItemListScreen({Key? key}) : super(key: key);

  final ItemListScreenState _state = ItemListScreenState();

  @override
  State<StatefulWidget> createState() {
    return _state;
  }
}

class ItemListScreenState extends State {
  late List<String> itemList;

  @override
  void initState() {
    super.initState();
    itemList = List<String>.generate(10000, (i) => "Item $i");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('sub list screen'),
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(itemList[index]),
          );
        },
      ),
    );
  }
}
