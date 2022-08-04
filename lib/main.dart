import 'package:flutter/material.dart';
import 'package:flutter_islami_c6_app/home/home_screen.dart';
import 'package:flutter_islami_c6_app/my_theme.dart';
import 'package:flutter_islami_c6_app/hadeth/hadeth_details.dart';
import 'package:flutter_islami_c6_app/providers/provider.dart';
import 'package:flutter_islami_c6_app/quran/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) =>AppConfigProvider() ,
      child: MyApp()));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetails.routeName : (context) => SuraDetails(),
        HadethDetails.routeName : (context) => HadethDetails(),
      },
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
      themeMode: provider.appTheme,
      locale:Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

    );
  }

}