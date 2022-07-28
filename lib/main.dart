import 'package:flutter/material.dart';
import 'package:flutter_islami_c6_app/home/home_screen.dart';
import 'package:flutter_islami_c6_app/my_theme.dart';
import 'package:flutter_islami_c6_app/quran/sura_details.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetails.routeName : (context) => SuraDetails(),
      },
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,

    );
  }

}