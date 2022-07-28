import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_islami_c6_app/my_theme.dart';
import 'package:flutter_islami_c6_app/quran/sura_details_item.dart';

class SuraDetails extends StatefulWidget {
  static String routeName = 'details_sura';

  @override
  _SuraDetailsState createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.name}',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        body: verses.length == 0
            ? Center(
                child: CircularProgressIndicator(
                  backgroundColor: MyThemeData.goldPrimary,
                ),
              )
            : ListView.separated(
                itemBuilder: (context, index) {
                  /*
               condition ? true : false
               */
                  return SuraDetailsItem(text: verses[index], index: index);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    color: MyThemeData.goldPrimary,
                  );
                },
                itemCount: verses.length),
      ),
    ]);
  }

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = fileContent.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;
  SuraDetailsArgs({required this.name, required this.index});
}
