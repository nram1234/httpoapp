import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child:
        ListView(
          children: <Widget>[
            Text('اسم الطالب : احمد محمد احمد عبد الحليم'),
            Text('كود الطالب : cmp-2018'),
            Text('القسم : علوم حاسب'),
            Text('السنه الدراسيه : 2018/2019'),
            Text('المستوي : المستوي الاول'),
            Text('التراكمي : 3.2'),
            Text('الحد الادني لعدد الساعات : 12 ساعه'),
            Text('الحد الاقصي لعدد الساعات : 18 ساعه'),
            Text('عدد الساعات المسجله : 15'),
            Text('عدد الساعات المجتازه : 18'),



          ],
        ),);
  }
}
