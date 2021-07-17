import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_item_game_page.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_item_box_kid_media_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'ألعاب الويب',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO : Get List Web Game From (WebGameData.getAllGame())
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomItemBoxKidMediaWidget(
                title: 'لعبة سبايدر مان',
                imagePath:
                    'assets/images/game.jpg',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CustomItemGamePage(url: 'https://flutter.dev');
                  }));
                },
              );
            }),
      ),
    );
  }
}
