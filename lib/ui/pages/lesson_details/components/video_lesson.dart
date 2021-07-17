import 'package:flutter/material.dart';
import 'package:flutter_k/constants.dart';
import 'show_video.dart';

class VideoLesson extends StatefulWidget {
  const VideoLesson({
    Key key,
  }) : super(key: key);

  @override
  _VideoLessonState createState() => _VideoLessonState();
}

class _VideoLessonState extends State<VideoLesson> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _title(context),
        SizedBox(height: kDefaultPadding),
        ShowVideo(),
      ],
    );
  }

  Text _title(BuildContext context) {
    return Text(
      'روابط أو فيديوهات أو صور',
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
