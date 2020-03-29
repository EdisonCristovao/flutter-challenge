import 'package:flutter/material.dart';

class FilterItemWidget extends StatelessWidget {
  String text = '';

  FilterItemWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          '$text',
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
