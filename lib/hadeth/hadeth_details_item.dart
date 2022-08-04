import 'package:flutter/material.dart';

class HadethDetailsItem extends StatelessWidget{
List<String> content ;
HadethDetailsItem({required this.content});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Text('$content',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
