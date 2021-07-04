import 'package:flutter/material.dart';
import 'package:flutter_k/data/news_data.dart';
import 'package:flutter_k/ui/pages/main_page/new_item_widget.dart';
import 'package:flutter_k/ui/pages/main_page/news_box_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('الصفحة الرئيسية'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: NewsBoxWidget(),
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
