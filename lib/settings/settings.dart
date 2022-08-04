import 'package:flutter/material.dart';
import 'package:flutter_islami_c6_app/my_theme.dart';
import 'package:flutter_islami_c6_app/providers/provider.dart';
import 'package:flutter_islami_c6_app/settings/language_bottom_sheet.dart';
import 'package:provider/provider.dart';

import 'Theme_bottom_sheet.dart';

class SettingTab extends StatefulWidget{

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Language',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 18,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: MyThemeData.goldPrimary,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appLanguage == 'en' ? 'English':'Arabic',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Icon(Icons.arrow_drop_down_outlined,size: 35,)
                ],
              ),
            ),
          ),
          SizedBox(height: 18,),
          Text('Theming',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 18,),
          InkWell(
            onTap: (){
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                  color: MyThemeData.goldPrimary,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appTheme == ThemeMode.light ? 'Light' : 'Dark',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Icon(Icons.arrow_drop_down_outlined,size: 35,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context){
          return LanguageBottomSheet();
        }
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context){
      return ThemeBottomSheet();
        }
    );
  }
}
