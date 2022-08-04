import 'package:flutter/material.dart';
import 'package:flutter_islami_c6_app/my_theme.dart';
import 'package:flutter_islami_c6_app/providers/provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget{
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),topRight: Radius.circular(15),)
      ),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.changeLanguage('en');
            },
            child: provider.appLanguage == 'en'?
                getSelectedItemWidget('English')
                :getUnSelectedItemWidget('English'),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              provider.changeLanguage('ar');
            },
            child: provider.appLanguage == 'ar'?
                getSelectedItemWidget('Arabic')
                :getUnSelectedItemWidget('Arabic'),
          ),

        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: Theme.of(context).textTheme.headline4,
          
        ),
        Icon(Icons.check,color: MyThemeData.goldPrimary,)
      ],
    );
  }

  Widget getUnSelectedItemWidget(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: TextStyle(
            fontSize: 18,
            color: MyThemeData.black
          )

        )
      ],
    );
  }

}
