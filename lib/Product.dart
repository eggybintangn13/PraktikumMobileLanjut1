import 'package:flutter/material.dart';
import 'package:product_state_app/RatingBox.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              name: "Headset Rexus",
              description: "Lastest Release from Rexus",
              price: 150000,
              image: "hs1.jpg"),
          ProductBox(
              name: "Headset Razer Black",
              description: "Lastest Release from Razer",
              price: 900000,
              image: "hs2.jpg"),
          ProductBox(
              name: "Headset Razer Pink",
              description: "Lastest Release from Razer",
              price: 1200000,
              image: "hs3.jpg"),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/appimages" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                          RatingBox(),
                        ],
                      )))
            ])));
  }
}
