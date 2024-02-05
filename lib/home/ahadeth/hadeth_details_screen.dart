import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_new/home/ahadeth/ahadethTap.dart';
import 'package:islami_new/home/ahadeth/item_hadeth_details.dart';
import 'package:islami_new/home/ahadeth/item_hadeth_name.dart';
import 'package:islami_new/home/quran/item_sura_details.dart';
import 'package:islami_new/home/quran/item_sura_name.dart';
import 'package:islami_new/my_theme.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details_screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth ;
    return  Stack(
      children: [
        Image.asset('assets/images/background.png',
          height:double.infinity ,
          width: double.infinity,
          fit: BoxFit.fill,),
        Scaffold(
          appBar:AppBar(
            title: Text('${args.title}',
              style: Theme.of(context).textTheme.titleLarge,),
            centerTitle: true,
          ),
          body:
          Container(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,
          vertical: MediaQuery.of(context).size.height*0.06),
            decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(25)
          ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                return ItemHadethDetails(content: args.content[index]);
              },
                itemCount: args.content.length,
              ),
            ),
          ),

        )

      ],

    );
  }
}
