import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("YOU JUST TAPPED $item"),
    action:
        SnackBarAction(label: "UNDO", onPressed: () => BTNConfirmUndo(context,item)),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

void BTNConfirmUndo(BuildContext context , String item) {
  var alertDialog = AlertDialog(
    title: Text("YOU JUST TAPPED $item"),
  );
  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

List<String> getListElement() {
  var items = List<String>.generate(1000, (counter) => "item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElement();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
      onTap: () {
        showSnackBar(context, listItems[index]);
        debugPrint("YOU JUST TAPPED ${listItems[index]}");
      },
    );
  });
  return listView;
}
