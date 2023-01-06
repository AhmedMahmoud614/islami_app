import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_final/Hadeth/Hadeth_details_screen.dart';
import 'package:islami_final/Quran/Sura_details_screen.dart';

import 'hadeth_tab.dart';

class ItemHadethName extends StatelessWidget {
 Hadeth hadeth;

 ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {

    return Container(
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
            arguments: hadeth,
          );



        },
        child: Text(hadeth.title
          ,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign:TextAlign.center ,
        ),
      ),
    );
  }
}
