import 'package:flutter/material.dart';
import 'package:flutter_islami_c6_app/home/hadeth_tab.dart';
import 'package:flutter_islami_c6_app/quran/quran_tab.dart';
import 'package:flutter_islami_c6_app/home/radio_tab.dart';
import 'package:flutter_islami_c6_app/home/tasbeh_tab.dart';
import 'package:flutter_islami_c6_app/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png',
          fit:BoxFit.fill ,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami',
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
                  label: 'Quran'
                ),
                BottomNavigationBarItem(
                  icon:ImageIcon(
                      AssetImage('assets/images/ic_hadeth.png'),
                  ),
                  label: 'Hadeth'
                ),
                BottomNavigationBarItem(
                  icon:ImageIcon(
                      AssetImage('assets/images/ic_sebha.png')
                  ),
                    label: 'Tasbeh'
                ),
                BottomNavigationBarItem(
                  icon:ImageIcon(
                      AssetImage('assets/images/ic_radio.png')
                  ),
                    label: 'Radio'
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
    QuranTab(),HadethTab(),TasbehTab(),RadioTab()
  ];

}
