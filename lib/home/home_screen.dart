import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_new/home/quran/quranTap.dart';
import 'package:islami_new/home/radio/radioTap.dart';
import 'package:islami_new/home/sebha/sebhaTap.dart';
import 'package:islami_new/home/settings/settings_tap.dart';
import 'package:islami_new/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import 'ahadeth/ahadethTap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode()
            ? Image.asset(
                'assets/images/background_dark.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset(
                'assets/images/background.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
                selectedIndex =index;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png'),
                        size: 40),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/images/ahadeth_icon.png'),
                        size: 40),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha_icon.png'),
                        size: 40),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio_icon.png'),
                        size: 40),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    label: AppLocalizations.of(context)!.settings),
              ],
            ),
            /*CurvedNavigationBar(
            index: 0,
            height: 60.0,
            items: <Widget>[
              ImageIcon(AssetImage('asse ts/images/radio_icon.png'),size:40 ),
              ImageIcon(AssetImage('assets/images/sebha_icon.png'),size:40),
              ImageIcon(AssetImage('assets/images/ahadeth_icon.png'),size:40),
              ImageIcon(AssetImage('assets/images/moshaf_blue.png'),size:40),
            ],
            color: Color.fromARGB(255, 164, 118, 53),
            buttonBackgroundColor: Color.fromARGB(255, 164, 118, 53),
            backgroundColor: MyTheme.primaryLightColor,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 300),
            onTap: (index) {
              setState(() {
                selectedIndex =index;
              });
            },
            letIndexChange: (index) => true,
          ),*/
          ),
          body: tabs[selectedIndex],

        )

      ],

    );
  }
  List<Widget> tabs = [
    QuranTap(),
    AhadethTap(),
    SebhaTap(),
    RadioTap(),
    SettingsTap()
  ];
}
