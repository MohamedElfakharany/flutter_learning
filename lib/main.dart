import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/widgets.dart';
import 'app_screen/home.dart';
// import 'app_screen/favorite_city.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EXPLORING UI WIDGETS...!",
      home: MainScreen()));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Long List View",
          style: TextStyle(
              color: Colors.lightBlue,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.amber,
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));
        },
        child: Icon(Icons.add),
        tooltip: 'Add One More Item',
      ),
    );
  }
}

