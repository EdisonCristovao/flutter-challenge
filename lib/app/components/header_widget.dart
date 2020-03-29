import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.short_text,
            size: 50.0,
          ),
          Icon(
            Icons.shopping_cart,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
