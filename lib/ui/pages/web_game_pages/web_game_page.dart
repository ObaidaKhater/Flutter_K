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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Theme.of(context).backgroundColor,
          ),
          onPressed: () {
            // TODO: Go (Main Student Page)
          },
        ),
      ),
      // TODO : Get List Web Game From (WebGameData.getAllGame())
      body: Container(
        child: ListView.builder(itemBuilder: (context, index) {
          return CustomItemBoxKidMediaWidget(
            title: 'لعبة صيد السمك',
            imagePath: 'https://upload.wikimedia.org/wikipedia/ar/0/02/Crash_Bandicoot_On_the_Run%21.jpg',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CustomItemGamePage(url: 'https://flutter.dev');
              }));
            },
          );
        }),
      ),
    );
  }

}
