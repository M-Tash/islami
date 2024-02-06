import 'package:flutter/material.dart';
import 'package:islami_new/home/ahadeth/item_hadeth_details.dart';
import 'package:islami_new/home/ahadeth/item_hadeth_name.dart';
import 'package:islami_new/my_theme.dart';
import 'package:islami_new/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details_screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
              '${args.title}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            centerTitle: true,
          ),
          body:
          Container(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,
                vertical: MediaQuery.of(context).size.height*0.06),
            decoration: BoxDecoration(
                color: provider.isDarkMode()
                    ? MyTheme.primaryDarkColor
                    : Colors.white,
                borderRadius: BorderRadius.circular(25)),
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
