import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {

String name;
ItemSuraDetails.ItemHadethDetails({required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(

        child: Text(
          name,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign:TextAlign.center ,
        ),

    );
  }
}
