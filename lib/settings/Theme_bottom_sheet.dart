import 'package:flutter/material.dart';
import 'package:flutter_islami_c6_app/my_theme.dart';
import 'package:flutter_islami_c6_app/providers/provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget{
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
            // dark
            onTap: (){
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.appTheme == ThemeMode.dark?
                getSelectedItemWidget('Dark')
                :getUnSelectedItemWidget('Dark'),
          ),
          SizedBox(height: 20,),
          InkWell(
            // light
            onTap: (){
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.appTheme == ThemeMode.light?
                getSelectedItemWidget('Light')
                :getUnSelectedItemWidget('Light'),
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
