import 'package:flutter/material.dart';

class FavoriteName extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteNameState();
  }
}

class _FavoriteNameState extends State<FavoriteName> {
  String FavName = "";
  var _currencies = ["Dollar", "Pound", "Dinar", "Other"];
  var _currentItemSelected ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PLS Write Your Name",
          style: TextStyle(
              color: Colors.lightBlue,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Your Name",
                hintText: "oooh yaaah Write Your Name here",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )
              ),
              onSubmitted: (String UserInput) {
                setState(() {
                  FavName = UserInput;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String DropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: DropDownStringItem,
                  child: Text(DropDownStringItem),
                );
              }).toList(),
              onChanged: (String? newValueSelected) {
                // Your code to execute, when a menu item is selected from drop down
                setState(() {
                  _currentItemSelected = newValueSelected!;
                });
              },
              value: _currentItemSelected,
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Your Fav Name is $FavName",
                  style: TextStyle(fontSize: 20.0),
                )),
          ],
        ),
      ),
    );
  }
}
