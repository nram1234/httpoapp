import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
enum WidgetMarker{
  info,search
}
class _HomeState extends State<Home> {
  int u=0;
  WidgetMarker widgetMarker=WidgetMarker.info;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              CircleAvatar(radius: 20.0,backgroundColor: Colors.deepOrange,)
              ,  Text('email')],
          ),
        ),
        appBar: AppBar(),
        body: customWidget(),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("HOME")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("search"))
          ],
          onTap: caruntpage,currentIndex:u,
        ));
  }

  void caruntpage(int i) {
    setState(() {
      u=i;
      switch (i) {
        case 0:

          return widgetMarker=WidgetMarker.info;

        case 1:

          return widgetMarker=WidgetMarker.search;
      }
      return widgetMarker=WidgetMarker.info;
    });
  }

  Widget customWidget(){
    switch(widgetMarker){
      case WidgetMarker.info:
        return Container(color: Colors.deepOrange,);

      case WidgetMarker.search:
        return Container(color: Colors.blue,);

    }
    return Container(color: Colors.deepOrange,);
  }
}