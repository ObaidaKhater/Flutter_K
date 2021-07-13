import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_k/data/lesson_data.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_add_video_button_widget.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_show_video_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBoxAddVideoWidget extends StatefulWidget {
  @override
  _CustomBoxAddVideoWidgetState createState() =>
      _CustomBoxAddVideoWidgetState();
}

class _CustomBoxAddVideoWidgetState extends State<CustomBoxAddVideoWidget> {
  File videoFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300.h,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: (videoFile != null)
          ? CustomShowFileVideoWidget(
              videoFile: this.videoFile,
              removeFunction: () {
                videoFile = null;
                setState(() {});
              },
            )
          : CustomAddVideoButtonWidget(
              onTap: () async {
                videoFile =
                    await LessonData.lessonData.pickerVideoFromGallery();
                setState(() {});
              },
            ),
    );
  }
}
