import 'package:flutter/material.dart';
import 'package:wrap/widgets/input_widget.dart';
import 'package:wrap/widgets/tag_widget.dart';

class WrapTags extends StatefulWidget {

  @override
  _WrapTagsState createState() => _WrapTagsState();
}

class _WrapTagsState extends State<WrapTags> {

  int idCounter = 0;
  List<TagWidget> widgetList = new List<TagWidget>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputWidget(onPressed: onPressedAdd),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Wrap content:', style: TextStyle(fontSize: 24),),
          ),
          (widgetList.length == 0) ? Container() : Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.black),
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 20.0,
              alignment: WrapAlignment.start,
              children: widgetList,
            ),
          )
        ],
      ),
    );
  }


  void onPressedAdd(String tag) {
    setState(() {
      widgetList.add(new TagWidget(text: tag, id: idCounter, onLongPress: onLongPressDelete));
      idCounter++;
    });
  }

  void onLongPressDelete(int id) {
    setState(() {
      widgetList.removeWhere((element) => element.id == id);
    });
  }

}