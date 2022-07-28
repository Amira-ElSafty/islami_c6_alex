import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget{
String text ;
int index ;
SuraDetailsItem({required this.text , required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Text('$text',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
