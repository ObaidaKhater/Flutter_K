import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/cartoon_video_pages/item_cartoon_video_page.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_item_box_kid_media_widget.dart';

class CartoonVideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'فيديوهات',
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
      // TODO : Get List Web Game From (AppGameData.getAllGame())
      body: Container(
        child: ListView.builder(itemBuilder: (context, index) {
          return CustomItemBoxKidMediaWidget(
            title: 'لعبة صيد السمك',
            imagePath:
                'https://upload.wikimedia.org/wikipedia/ar/0/02/Crash_Bandicoot_On_the_Run%21.jpg',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ItemCartoonVideoPage(
                    url:
                        'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');
              }));
            },
          );
        }),
      ),
    );
  }
}
