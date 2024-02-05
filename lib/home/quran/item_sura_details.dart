import 'package:flutter/material.dart';
import 'package:islami_new/home/quran/sura_details_screen.dart';
import 'package:islami_new/my_theme.dart';

class ItemSuraDetails extends StatelessWidget {
  String name;
  int index ;

  ItemSuraDetails({required this.name,required this.index});
  @override
  
  Widget build(BuildContext context) {
    return Text(
        "$name {${index+1}",
        textDirection: TextDirection.rtl,textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleSmall);
  }
}

