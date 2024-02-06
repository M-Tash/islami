import 'package:flutter/material.dart';
import 'package:islami_new/home/ahadeth/hadeth_details_screen.dart';
class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;
  ItemHadethName({required this.hadeth});
  @override
  
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Text(hadeth.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium),
    );
  }
}
class Hadeth{
  String title;
  List<String> content ;
  Hadeth({required this.title,required this.content});
}
