import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_islami_c6_app/hadeth/item_hadeth.dart';

import '../my_theme.dart';

class HadethTab extends StatefulWidget{
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if(hadethList.isEmpty){
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Center(
                child: Image.asset('assets/images/image_hadeth_logo.png'))),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Divider(
                  color: MyThemeData.goldPrimary,
                  thickness: 3,
                ),
                Text(
                  'Hadeth Name',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Divider(
                  color: MyThemeData.goldPrimary,
                  thickness: 3,
                ),
                Expanded(
                  child:hadethList.length == 0 ?
                      Center(
                        child: CircularProgressIndicator(
                          color: Theme.of(context).primaryColor,
                        ),
                      )
                      :
                  ListView.separated(
                      itemBuilder: (context, index) {
                        return ItemHadeth(hadeth: hadethList[index],);
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: MyThemeData.goldPrimary,
                          thickness: 2,
                        );
                      },
                      itemCount: hadethList.length),
                )
              ],
            )),
      ],
    );
  }

  void loadHadethFile()async{
    String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethList = fileContent.split('#\r\n');
    for(int i = 0 ; i < ahadethList.length ; i++){
      List<String>  hadethLines = ahadethList[i].split('\n');
      String title = hadethLines[0];
      print(title);
      hadethLines.removeAt(0);
      print('=========================');
      print(hadethLines);
      Hadeth hadeth = Hadeth(title: title, content: hadethLines);
      hadethList.add(hadeth);
    }
    setState(() {

    });
  }
}
class Hadeth{
  String title ;
  List<String> content ;
  Hadeth({required this.title , required this.content});
}