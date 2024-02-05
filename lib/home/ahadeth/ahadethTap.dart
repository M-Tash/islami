import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_new/my_theme.dart';
import 'item_hadeth_name.dart';

class AhadethTap extends StatefulWidget {
  @override
  State<AhadethTap> createState() => _AhadethTapState();
}

class _AhadethTapState extends State<AhadethTap> {
 List<Hadeth> hadethList =[];
  @override
  Widget build(BuildContext context) {
    if(hadethList.isEmpty){
      loadFile();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/ahadeth_image.png',width:312 ,height:219 ,)),
        Divider(
    color: MyTheme.primaryLightColor,
    thickness: 3,
    ),
        Text('الأحاديث',style: Theme.of(context).textTheme.titleMedium
        ),
        Divider(
          color: MyTheme.primaryLightColor,
          thickness: 3,
        ),
        hadethList.isEmpty ?
            Center(child: CircularProgressIndicator(
              color: MyTheme.primaryLightColor, ))
            :
        Expanded(
            child:
            ListView.separated(
              separatorBuilder:(context, index) {
             return Divider(
                color: MyTheme.primaryLightColor,
               thickness: 3);
              },
              itemBuilder: (context, index) {
              return ItemHadethName(hadeth: hadethList[index], );
            },
              itemCount: hadethList.length,
            )
        )


      ],
    );
  }

  void loadFile()async{
    String hadethContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List <String> ahadethList =hadethContent.split('#\r\n');
    for(int i=0;i<ahadethList.length;i++){
      List<String> hadethLines = ahadethList[i].split('\n');
      String title =hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth =Hadeth(title: title, content: hadethLines);
      hadethList.add(hadeth);
      setState(() {

      });
    }
  }
}

