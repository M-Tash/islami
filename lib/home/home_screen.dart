import 'package:flutter/material.dart';
import 'package:islami_new/home/quran/quranTap.dart';
import 'package:islami_new/home/radio/radioTap.dart';
import 'package:islami_new/home/sebha/sebhaTap.dart';
import 'package:islami_new/my_theme.dart';

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
    return Stack(
      children: [
        Image.asset('assets/images/background.png',
          height:double.infinity ,
          width: double.infinity,
          fit: BoxFit.fill,),
        Scaffold(
          appBar:AppBar(
            title: Text('إسلامي',
              style: Theme.of(context).textTheme.titleLarge,),
            centerTitle: true,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: MyTheme.primaryLightColor
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
                selectedIndex =index;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(icon:
                ImageIcon(AssetImage('assets/images/radio_icon.png'),size:40 ),label:'الراديو'),
                BottomNavigationBarItem(icon:
                ImageIcon(AssetImage('assets/images/sebha_icon.png'),size:40),label:'التسبيح'),
                BottomNavigationBarItem(icon:
                ImageIcon(AssetImage('assets/images/ahadeth_icon.png'),size:40),label:'الأحاديث'),
                BottomNavigationBarItem(icon:
                ImageIcon(AssetImage('assets/images/moshaf_blue.png'),size:40),label:'القرآن'),

              ],
            ),
          ),
          body: tabs[selectedIndex],

        )

      ],

    );
  }
  List<Widget> tabs =[
    RadioTap(),SebhaTap(),AhadethTap(),QuranTap()
  ];
}
