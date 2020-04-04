import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 40, 15, 0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.short_text,
              size: 40.0,
            ),
            Icon(
              Icons.shopping_basket,
              size: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
