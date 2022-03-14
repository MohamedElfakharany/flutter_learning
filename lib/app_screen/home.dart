import 'package:flutter/material.dart';
import 'package:flutter_learning/app_screen/favorite_city.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Confirm Booking",
            style: TextStyle(
                color: Colors.lightBlue,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.amber,
        ),
        body: (
          Container(
          padding: EdgeInsets.only(left: 10, top: 50, right: 10, bottom: 30),
          alignment: Alignment.center,
          color: Colors.cyanAccent,

          child: Column(
            children: <Widget>[

              flightImageAssets(),
              Row(
                children: [
                  Expanded(
                      child: Text(
                        "Welcome",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54),
                      )),
                  Expanded(
                      child: Text(
                        "moving from Cairo to Alex in just 1 hour",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54),
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                        "Back",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54),
                      )),
                  Expanded(
                      child: Text(
                        "moving from Cairo to Alex in just 1 hour",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54),
                      )),
                ],
              ),
              BtnWriteYourName(),
              BtnFlightBook()
            ],
          ))
        ));
  }
}

class flightImageAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/flight.png");
    Image image = Image(
      image: assetImage,
      width: 250,
      height: 250,
    );
    return Container(
      child: image,
    );
  }
}

class BtnWriteYourName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 250,
      height: 35,
      child: RaisedButton(
          color: Colors.amberAccent,
          child: Text(
            "Write Your Name",
            style: TextStyle(
                color: Colors.lightBlue,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700),
          ),
        elevation: 6.0,
        onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>FavoriteName()));
        }
      ));
  }
}

class BtnFlightBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 250,
      height: 35,
      child: RaisedButton(
          color: Colors.amberAccent,
          child: Text(
            "Book Your Flight",
            style: TextStyle(
                color: Colors.lightBlue,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700),
          ),
          elevation: 6.0,
          onPressed: () => BookFlight(context)),
          );
  }

  void BookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfuly"),
      content: Text("Have a Pleasent Flight"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
