import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/main_page/custom_item_column_widget.dart';
import 'package:flutter_k/ui/pages/main_page/custom_news_box_widget.dart';

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
            child: CustomNewsBoxWidget(),
          ),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomItemColumnWidget(
                      title: 'من نحن',
                      icon: Icons.apartment,
                    ),
                    CustomItemColumnWidget(
                        title: 'سياسات الروضة', icon: Icons.assignment_rounded),
                    CustomItemColumnWidget(
                      title: 'أليه التسجيل',
                      icon: Icons.login_rounded,
                    ),
                    CustomItemColumnWidget(
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
