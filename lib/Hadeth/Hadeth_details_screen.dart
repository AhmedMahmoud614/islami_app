import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_final/Hadeth/hadeth_tab.dart';
import 'package:islami_final/Quran/Item_Sura_Details.dart';

import 'package:islami_final/my_theme.dart';
import 'package:islami_final/providers/app_config_provider.dart';
import 'package:provider/provider.dart';



class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'Hadeth_details_screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth;

    return Stack(children: [
      provider.isDarkMode() ?
      Image.asset(
        'assets/images/main_back_ground_dark.png',
        width: double.infinity,
        fit: BoxFit.fill,
      )
          :
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            ' ${args.title}',
            style: Theme
                .of(context)
                .textTheme
                .headline1,
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: MyThemeData.whiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: ListView.builder(
          itemBuilder: (context,index){
            return ItemSuraDetails(name :args.content[index]);
          },
          itemCount: args.content.length,),

        ),
      ),
    ]);
  }

}
