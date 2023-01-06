import 'package:flutter/material.dart';
import 'package:islami_final/Hadeth/hadeth_tab.dart';
import 'package:islami_final/Quran/quran_tab.dart';
import 'package:islami_final/Home/radiotab.dart';
import 'package:islami_final/Home/tasbeh_tab.dart';
import 'package:islami_final/Quran/item_Sura_Name.dart';
import 'package:islami_final/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_final/providers/app_config_provider.dart';
import 'package:islami_final/settings/settingsTab.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex =0;

  @override
  Widget build(BuildContext context) {
  var  provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
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
              AppLocalizations.of(context)!.islami,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Theme
                    .of(context)
                    .primaryColor

            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
                selectedIndex=index;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(icon: ImageIcon(
                    AssetImage("assets/images/icon_quran.png")
                ),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(icon: ImageIcon(
                    AssetImage("assets/images/icon_hadeth.png")
                ),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(icon: ImageIcon(
                    AssetImage("assets/images/icon_sebha.png")
                ),
                    label: AppLocalizations.of(context)!.tasbeh),
                BottomNavigationBarItem(icon: ImageIcon(
                    AssetImage("assets/images/icon_radio.png")
                ),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem( icon: Icon(
    Icons.settings,

    ),


                    label: AppLocalizations.of(context)!.settings),

              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }
}
  List<Widget> tabs =[
QuranTab(), HadethTab(),TasbehTab(),RadioTab(),SettingsTab(),
  ];

