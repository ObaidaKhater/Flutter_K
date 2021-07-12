import 'package:flutter/material.dart';
import 'package:flutter_k/components/custom_expanded.dart';
import 'package:flutter_k/model/cartoon_video.dart';
import 'package:flutter_k/ui/pages/app_game_pages/app_game_page.dart';
import 'package:flutter_k/ui/pages/cartoon_video_pages/cartoon_video_page.dart';
import 'package:flutter_k/ui/pages/web_game_pages/web_game_page.dart';

class CustomColumnStudentArea extends StatelessWidget {
  final BuildContext context;
  const CustomColumnStudentArea({
    Key key,
    this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customExpanded(1),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WebGamePage()));
            },
            child: customSharedContainerWithText(context, 'ألعاب ويب'),
          ),
        ),
        customExpanded(1),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AppGamePage()));
            },
            child: customSharedContainerWithText(context, 'تطبيقات العاب'),
          ),
        ),
        customExpanded(1),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartoonVideoPage()));
            },
            child: customSharedContainerWithText(context, 'قصص وحكايا'),
          ),
        ),
        customExpanded(1),
      ],
    );
  }
}
