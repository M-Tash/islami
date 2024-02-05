import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Row(
            children: [
              Container( margin: EdgeInsets.only(left: 10,right: 5,top: 100),
                  child: Image(image: AssetImage('assets/images/radio_image.png'),width: 370,height:200 ,))
            ],
          ),
          Row(
            children: [
              Container( margin: EdgeInsets.only(left: 110,top: 60),
                  child: Text('إذاعة القرآن الكريم',style: Theme.of(context).textTheme.titleMedium,))
            ],
          ),
          Row(
            children: [
              Container( margin: EdgeInsets.only(left: 85,top: 55),
                  child: Image(image: AssetImage('assets/images/radio_play.png'),width: 218.5,height:36 ,))
            ],
          ),
        ],
      ),
    );
  }
}
