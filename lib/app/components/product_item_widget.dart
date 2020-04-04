import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 175,
          decoration: BoxDecoration(
            color: Colors.green,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 1],
              colors: [
                Color(0xff7CB25C),
                Color(0xff458F52),
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                  child: Icon(
                    Icons.favorite,
                  ),
                ),
              ),
              Image(
                image: AssetImage('assets/channel-coco.png'),
                height: 250,
              ),
            ],
          ),
        ),
        SizedBox(height: 6),
        Text(
          'Chanel Coco Noir',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(height: 6),
        Text(
          'R\$ 99.50',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
