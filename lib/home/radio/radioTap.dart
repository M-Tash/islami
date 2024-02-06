import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_new/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1),
                  child: Image(
                    image: AssetImage('assets/images/radio_image.png'),
                    width: 370,
                    height: 200,
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.08),
                  child: Text(
                    AppLocalizations.of(context)!.radio_name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.08),
                  child: provider.isDarkMode()
                      ? Image(
                          image:
                              AssetImage('assets/images/radio_play_dark.png'),
                          width: 218.5,
                          height: 36,
                        )
                      : Image(
                          image: AssetImage('assets/images/radio_play.png'),
                          width: 218.5,
                          height: 36,
                        ))
            ],
          ),
        ],
      ),
    );
  }
}
