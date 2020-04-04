import 'package:desafiofluterando/app/components/filter_item_widget.dart';
import 'package:desafiofluterando/app/components/filtros_widget.dart';
import 'package:desafiofluterando/app/components/header_widget.dart';
import 'package:desafiofluterando/app/components/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            HeaderWidget(),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                'Perfume',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: FiltrosWidget(),
            ),
            SizedBox(height: 25),
            Container(
              height: 345,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      RotatedBox(
                        quarterTurns: 15,
                        child: Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'SUGGESTED',
                                  style: TextStyle(color: Colors.green),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 15,
                        child: Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'POPULAR',
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.grey[200],
                                  radius: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ProductItemWidget(),
                        SizedBox(width: 40),
                        ProductItemWidget(),
                        SizedBox(width: 40),
                        ProductItemWidget()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best Deal',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text('ALL'),
                      Icon(Icons.arrow_right),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.grey[200]),
                ),
                child: Stack(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.5, 1],
                              colors: [
                                Color(0xff7CB25C),
                                Color(0xff458F52),
                              ],
                            ),
                          ),
                          child: Image(
                            image: AssetImage('assets/channel-coco.png'),
                            height: 100,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'My Burberry Black',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'R\$ 89,00',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        decoration: BoxDecoration(
                          color: Colors.orange[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Text(
                          '-20%',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
