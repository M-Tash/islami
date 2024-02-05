import 'package:flutter/material.dart';
import 'package:islami_new/home/quran/sura_details_screen.dart';
import 'package:islami_new/my_theme.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;
  ItemHadethDetails({required this.content});
  @override
  
  Widget build(BuildContext context) {
    return Text(
        content,
        textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleSmall);
  }
}

