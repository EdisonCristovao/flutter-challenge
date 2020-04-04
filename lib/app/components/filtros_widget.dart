import 'package:desafiofluterando/app/components/filter_item_widget.dart';
import 'package:flutter/material.dart';

class FiltrosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Icon(
              Icons.tune,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 25),
          FilterItemWidget(text: 'Flores'),
          SizedBox(width: 25),
          FilterItemWidget(text: 'WARM & SPICY'),
          SizedBox(width: 25),
          FilterItemWidget(text: 'DOCES'),
        ],
      ),
    );
  }
}
