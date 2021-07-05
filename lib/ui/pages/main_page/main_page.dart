import 'package:flutter/material.dart';
import 'package:flutter_k/data/news_data.dart';
import 'package:flutter_k/ui/pages/main_page/item_column_widget.dart';
import 'package:flutter_k/ui/pages/main_page/new_item_widget.dart';
import 'package:flutter_k/ui/pages/main_page/news_box_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'الصفحة الرئيسية',
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Theme.of(context).backgroundColor,
            ),
            onPressed: () {
              // TODO: Go (Login Page)
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: NewsBoxWidget(),
          ),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ItemColumnWidget(
                      title: 'من نحن',
                      icon: Icons.apartment,
                    ),
                    ItemColumnWidget(
                        title: 'سياسات الروضة', icon: Icons.assignment_rounded),
                    ItemColumnWidget(
                      title: 'أليه التسجيل',
                      icon: Icons.login_rounded,
                    ),
                    ItemColumnWidget(
                      title: 'التوظيف',
                      icon: Icons.app_registration,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
