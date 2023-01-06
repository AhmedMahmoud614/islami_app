import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_final/Quran/Sura_details_screen.dart';

class ItemSuraName extends StatelessWidget {
 String name;
 int index;

 ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {

    return Container(
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
          arguments: SuraDetailsArgs(name: name, index: index)
          );
        },
        child: Text(
          name,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign:TextAlign.center ,
        ),
      ),
    );
  }
}
