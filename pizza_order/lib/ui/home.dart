import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Color.fromRGBO(21, 22, 21, 1),
            padding: EdgeInsets.only(top: 30, left: 10),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Pizza",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontFamily: 'FredokaOne'),
                    )),
                    Expanded(
                        child: Text(
                      "Ingredient 1, Ingredient 2, Ingredient 2",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontFamily: 'FredokaOne'),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Pizza",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontFamily: 'FredokaOne'),
                    )),
                    Expanded(
                        child: Text(
                      "Ingredient 1, Ingredient 2, Ingredient 2",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontFamily: 'FredokaOne'),
                    ))
                  ],
                ),
                PizzaImageWidget(),
                OrderButton()
              ],
            )));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage pizzaAsset = AssetImage('images/pizza.png');
    Image image = Image(image: pizzaAsset, width: 200.0, height: 200.0);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
        margin: EdgeInsets.only(top: 10.0),
        child: RaisedButton(
          child: Text("Order your pizza!"),
          color: Colors.grey,
          elevation: 5,
          onPressed: () {
            order(context);
          },
        ));
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order completed"),
      content: Text("Thanks for your order!"),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
