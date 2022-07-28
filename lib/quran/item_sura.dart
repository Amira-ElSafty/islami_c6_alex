import 'package:flutter/material.dart';
import 'package:flutter_islami_c6_app/quran/sura_details.dart';

class ItemSura extends StatelessWidget {
String text ;
int index ;
ItemSura({required this.text , required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraDetails.routeName,
            arguments: SuraDetailsArgs(
                name: text,
                index: index)
        );
      },
      child: Text(text,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
      ),

    );
  }
}
