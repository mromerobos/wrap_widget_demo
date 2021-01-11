import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  InputWidget({Key key, this.onPressed}) : super(key: key);

  final Function onPressed;

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String field;
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
          width: screenWidth*0.7,
          child: TextField(
            controller: controller,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: new BorderSide(color: Colors.teal)),
                hintText: 'Enter a tag term'),
            onChanged: (value) => field = value,
          ),
        ),
        Center(
          child: Container(
            width: screenWidth*0.2,
            child: FlatButton(
              color: Colors.orange,
                onPressed: () {
                  if (field != null && field.length > 0) widget.onPressed(field);
                  controller.clear();
                },
                child: Icon(Icons.add)),
          ),
        )
      ],
    );
  }
}
