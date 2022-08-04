import 'package:flutter/material.dart';
import 'package:flutter_islami_c6_app/hadeth/hadeth_tab.dart';
import 'package:flutter_islami_c6_app/hadeth/hadeth_details_item.dart';

class HadethDetails extends StatelessWidget {
  static String routeName = 'hadeth_details';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.title}',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        body: HadethDetailsItem(content: args.content),
      ),
    ]);
  }
}
