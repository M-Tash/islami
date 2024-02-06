import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_new/home/quran/item_sura_details.dart';
import 'package:islami_new/home/quran/item_sura_name.dart';
import 'package:islami_new/my_theme.dart';
import 'package:islami_new/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details_screen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
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
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color:
                      provider.isDarkMode() ? Colors.white : MyTheme.blackColor,
                )),
            title: Text(
              '${args.name}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            centerTitle: true,
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: MyTheme.primaryLightColor,
                ))
              : Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.06),
                  decoration: BoxDecoration(
                      color: provider.isDarkMode()
                          ? MyTheme.primaryDarkColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                          color: provider.isDarkMode()
                              ? MyTheme.yellowColor
                              : MyTheme.primaryLightColor,
                          thickness: 3,
                        );
                },
                itemBuilder: (context, index) {
                  return ItemSuraDetails (name: verses[index],index: index,);
                },
                itemCount: verses.length,
              ),
            ),
          ),

        )

      ],

    );
  }

  void loadFile(int index)async{
    String content =await rootBundle.loadString('assets/files/${index+1}.txt');
   List <String> lines = content.split('\n');
   verses =lines;
   setState(() {

   });

  }
}
