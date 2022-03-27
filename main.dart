import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
      title: "Exploring UI Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Raised Button"),
        ),
        body: showList(),
        floatingActionButton: FloatingActionButton(onPressed: () {
          debugPrint("Fab Clicked");
        }),
      )));
}

class geneteListElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: RaisedButton(
        color: Colors.amber,
        child: Text(
          "Showing the raised buttion",
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 15.0,
          ),
        ),
        onPressed: () {
          bookFlight(context);
        },
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
        title: Text("Flight Booked Successfully"),
        content: Text(
          "You have successfully booked flight",
        ));

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}

Widget generateListElement() {
  var listView = ListView(children: <Widget>[
    ListTile(
      trailing: Icon(Icons.laptop),
      leading: Icon(Icons.umbrella),
    )
  ]);
  return listView;
}

List<String> generateLongList() {
  var listItem = List<String>.generate(200, (counter) => "Item $counter");
  {
    return listItem;
  }
  ;
}

Widget showList() {
  var listSee = generateLongList();
  var list = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.dangerous),
      );
    },
  );
  return list;
}
