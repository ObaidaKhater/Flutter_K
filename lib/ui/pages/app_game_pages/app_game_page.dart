import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_item_game_page.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_item_box_kid_media_widget.dart';

class AppGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'تطبيقات ألعاب',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO : Get List Web Game From (AppGameData.getAllGame())
      body: Container(
        child: ListView.builder(itemBuilder: (context, index) {
          return CustomItemBoxKidMediaWidget(
            title: 'لعبة سبايدر مان',
            imagePath: 'assets/images/game.jpg',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CustomItemGamePage(
                    url:
                        'https://play.google.com/store/apps/details?id=com.google.android.apps.dynamite&hl=en_US&gl=US');
              }));
            },
          );
        }),
      ),
    );
  }
}
