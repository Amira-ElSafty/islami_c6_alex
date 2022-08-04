import 'package:flutter/material.dart';
import 'package:flutter_islami_c6_app/hadeth/hadeth_tab.dart';
import 'package:flutter_islami_c6_app/hadeth/hadeth_details.dart';
import 'package:flutter_islami_c6_app/quran/sura_details.dart';

class ItemHadeth extends StatelessWidget {
Hadeth hadeth ;
ItemHadeth({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetails.routeName,
          arguments: hadeth
        );
      },
      child: Text(hadeth.title,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
      ),

    );
  }
}
