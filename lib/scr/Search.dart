import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[ Row(textDirection: TextDirection.ltr,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        DropdownButton<String>(value:'علوم حاسب' ,items: [
          DropdownMenuItem(
            child: Text('علوم حاسب'),
            value: 'علوم حاسب',
          )
        ], onChanged: (s){}),
        DropdownButton(value: 'المستوي الاول',items: [
          DropdownMenuItem(
            child: Text('المستوي الاول'),
            value: 'المستوي الاول',
          )
          ,DropdownMenuItem(
            child: Text('المستوي الثاني'),
            value: 'المستوي الثاني',
          ),DropdownMenuItem(
            child: Text('المستوي الثالث'),
            value: 'المستوي الثالث',
          ),DropdownMenuItem(
            child: Text('المستوي الرابع'),
            value: 'المستوي الرابع',
          )  ], onChanged: (s){}),
        DropdownButton<String>(value:'الفصل الدراسي الاول' ,items: [
          DropdownMenuItem(
            child: Text('الفصل الدراسي الاول'),
            value: 'الفصل الدراسي الاول',
          ),DropdownMenuItem(
            child: Text('الفصل الدراسي الثاني'),
            value: 'الفصل الدراسي الثاني',
          )
        ], onChanged: (s){})
      ],
    ) ],);

  }
}
