import 'package:flutter/material.dart';
import 'package:flutter_islami_c6_app/hadeth/hadeth_tab.dart';
import 'package:flutter_islami_c6_app/settings/settings.dart';
import 'package:flutter_islami_c6_app/providers/provider.dart';
import 'package:flutter_islami_c6_app/quran/quran_tab.dart';
import 'package:flutter_islami_c6_app/home/radio_tab.dart';
import 'package:flutter_islami_c6_app/home/tasbeh_tab.dart';
import 'package:flutter_islami_c6_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.isDarkMode() ?
          'assets/images/dark_background.png'
              :
          'assets/images/main_background.png',
          fit:BoxFit.fill ,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyThemeData.goldPrimary
            ),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index){
                currentIndex = index ;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                    icon:ImageIcon(
                      AssetImage('assets/images/ic_quran.png')
                    ),
                  label: AppLocalizations.of(context)!.quran
                ),
                BottomNavigationBarItem(
                  icon:ImageIcon(
                      AssetImage('assets/images/ic_hadeth.png'),
                  ),
                  label: AppLocalizations.of(context)!.hadeth
                ),
                BottomNavigationBarItem(
                  icon:ImageIcon(
                      AssetImage('assets/images/ic_sebha.png')
                  ),
                    label: AppLocalizations.of(context)!.tasbeh
                ),
                BottomNavigationBarItem(
                  icon:ImageIcon(
                      AssetImage('assets/images/ic_radio.png')
                  ),
                    label: AppLocalizations.of(context)!.radio
                ),
                BottomNavigationBarItem(
                    icon:Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.radio
                ),
              ],
            ),
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }
  List<Widget> tabs = [
    QuranTab(),HadethTab(),TasbehTab(),RadioTab(),SettingTab()
  ];

}
