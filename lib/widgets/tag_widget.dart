import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {

  TagWidget({Key key, this.text, this.id, this.onLongPress}) : super(key: key);
  final int id;
  final String text;
  final Function onLongPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => onLongPress(this.id),
      child: Container(
        padding: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.amberAccent
        ),
        child: Text(this.text, style: TextStyle(fontSize: 20),),
      ),
    );
  }
}